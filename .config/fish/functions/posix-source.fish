function posix-source --description "Source POSIX-style env files (KEY=VALUE) in fish shell"
    if test (count $argv) -eq 0
        echo "Usage: posix-source <file>"
        return 1
    end

    if not test -f $argv[1]
        echo "Error: File '$argv[1]' not found"
        return 1
    end

    for line in (cat $argv[1] | grep -v '^#' | grep -v '^\s*$')
        set -l kv (string split -m 1 '=' $line)
        if test (count $kv) -eq 2
            set -l key $kv[1]
            set -l value (string trim --chars=\'\"\  $kv[2])
            set -gx $key $value
        end
    end
end
