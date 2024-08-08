#--------------------------------------------------------
# Background: WSL UDP port forwarding
#--------------------------------------------------------

# Microsoft recommends "netsh interface portproxy" for port forwarding, but it does not support UDP for now.
# See https://learn.microsoft.com/en-us/windows/wsl/networking#accessing-a-wsl-2-distribution-from-your-local-area-network-lan.

# For UDP port forwarding, you can use Windows NAT mechanism.
# See https://gist.github.com/the-moog/e7a1b5150ce9017309afbcf91848e622.

#--------------------------------------------------------
# Configure Windows NAT for port forwarding
#--------------------------------------------------------

# It's hard to configure the default WSL NAT network, which is blackbox, to do port forwarding.
# Instead, set up a new NAT network for port forwarding.
# The new NAT network must not conflict with the default WSL NAT network.

# Assign new IP address to WSL switch
# Two IP addresses must be configured, one for the WSL switch and one for the guest, as follows:
#   WSL switch: 192.168.100.1
#   WSL guest: 192.168.100.2
New-NetIPAddress -InterfaceAlias "vEthernet (WSL)" -IPAddress 192.168.100.1 -PrefixLength 24

# Add NAT network
New-NetNat -Name "WSL-NAT" -InternalIPInterfaceAddressPrefix 192.168.100.0/24

# Add UDP port forwarding from WSL host to guest on port 2222
Add-NetNatStaticMapping -NatName "WSL-NAT" -Protocol UDP -ExternalIPAddress 0.0.0.0/0 -ExternalPort 5353 -InternalIPAddress 192.168.100.2 -InternalPort 5353

#--------------------------------------------------------
# Configure WSL guest to assign IP address
#--------------------------------------------------------

# Configure new IP address on WSL
# The new IP address needs to be the same as the one specified in port forwarding
wsl -d WSL20.04WSL2 -u root ip address add 192.168.100.2/24 dev eth0
