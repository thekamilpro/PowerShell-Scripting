function Find-Software {
    [CmdletBinding()]
    param(
        [Parameter(ValueFrompipeline, Mandatory, ValueFromPipelineByPropertyName)]
        [string[]]$Name
    )

    begin {
        $paths = @(
            "hklm:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall",
            "hklm:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
        )
    }

    process {
        foreach ($path in $paths) {
            Write-Verbose "Processing path [$path]"
            foreach ($n in $Name) {
                Write-Verbose "Searching for [$n]"
                Get-ChildItem -Path $path |
                Get-ItemProperty |
                Where-Object { $_.DisplayName -like "*$n*" }
            }
        }
    }

    end {
    }
}

function Remove-Software {
    [CmdletBinding( <#Removing software is dangerous. We should uninstall software by name by default#> )]
    param(
    
        #User can only provide name or the object
        [string]$Name,
    
        #We need to allow user to pipe object from Find-Software
        <#What type Find-Software returns?#>$InputObject
    )

    begin {
    }

    process {

        #if user provided the name, you need to find this software before uninstalling it

        <#
            if the object has been provided, call  uninstall
            make sure user gets prompted to confirm to uninstall the software
            to execute installer, read about Start-Process cmdlet
            the uninstallation doesn't need to be quiet
        #> 
    }

    end {
    }
}

# You can install Firefox for this homework: winget install Mozilla.Firefox
# Bonus task: find the way to require administrator rights