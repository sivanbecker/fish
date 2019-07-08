function gen_vms
    # create vms in data center
    # configure names in infinilab
    # configure each vm vcenter ,area ,..
    set counter 0
    set hosts ''
    for vm in $argv
        printf "Start working on $vm\n"
        # infradev vmware new_vm_from_template -u sbecker -p 8dBxCcBzPPsN95 --template gdc-qa-io-new-template $vm
        set hosts (string join "\n" $hosts $vm)
        set counter (math $counter + 1)
        if test $counter -eq 2
            for h in $hosts
                printf "Verify host $h is ready for configuration\n"
                infradev lab hosts_ready_for_config -u sbecker -p 8dBxCcBzPPsN95 $h
                if test $status -eq 0:
                    printf "About to configure $hosts\n"
                else
                    return 1
                end
                infradev lab configure_new_hosts -u sbecker -p 8dBxCcBzPPsN95 $h
            end 
            set hosts ''
            set counter 0
        end
    end # for vm
end

