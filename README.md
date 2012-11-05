# Knife IPMI

This plugin provides basic IPMI controls through knife. It requires that your nodes have populated IPMI information such as that provided by the ohai-ipmi plugin.

## Requirements
`ruby-ipmitool`
`ohai-ipmi` - In order to populate IPMI data on the Chef::Node

## What can it do?

The plugin currently provides power controls 'on', 'off', 'status', 'reset', 'soft' which equate directly to their IPMI namesakes.

    knife ipmi power on NODE
    knife ipmi power off NODE
    knife ipmi power status NODE
    knife ipmi power reset NODE
    knife ipmi power soft NODE
