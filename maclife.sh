        csrutil authenticated-root disable;
        diskutil mount /Volumes/MAC;
         Mount -uv /Volumes/MAC;	
         cd /Volumes/MAC/System/Library/LaunchAgents;
        mkdir tmp;
        mv com.apple.ManagedClientAgent.* tmp/;
        mv com.apple.mdmclient.* tmp/;
        cd ../LaunchDaemons;
        mkdir tmp;
        mv com.apple.ManagedClient.* tmp/;
        mv com.apple.mdmclient.* tmp/;
        bless --folder /Volumes/MAC/System/Library/CoreServices --bootefi --create-snapshot;