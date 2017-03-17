#! /bin/tcsh -f 
# This file is sourced by the .profile file.
# PUT ALL PERSONAL ALIASES IN THIS FILE.
  xhost +
  
# ------------------------------------------------{
#  mach = `uname -n` ; set mach
#  me   = `whoami` ; set me # Note: setting this var will stop icds
# ------------------------------------------------}

# ------------------------------------------------{
#  set -o allset
#  TERM=vt102
#  HOSTNAME=$(uname -n)
#  set +o allset
set proj0="/proj/RDCH96/workspace/rotang/galena0/fcenv"
set proj="/proj/RDCH96/workspace/rotang/galena_newserver/fcenv"
set projc="/proj/RDCH96/workspace/rotang/corvette_va1/fcenv"
set projd="/proj/RDCH96/workspace/rotang/ducati_va1/fcenv"
set work_space1="/proj/RDCH95/workspace/rotang"
set work_space="/proj/RDCH106/workspace/rotang"
# ------------------------------------------------}
# Personal Alias of Rossi
  
  alias go "cd $proj"
  alias gow "cd $work_space"
  alias gow1 "cd $work_space1"
  alias go0 "cd $proj0"
  alias goc "cd $projc"
  alias god "cd $projd"
  alias gosim "cd $proj/system/sim/"
  alias gouvc "cd $proj/system/tb/uvc_qmon/sv"
  alias godpll "cd /proj/RDCH96/workspace/rotang/galena0/fcenv/system/tb/uvc_dpll_rd/sv"
  alias gojun "cd /proj/RDCH92/workspace/junliu/project/galena1/fcenv/"
  alias goovm "cd /tools/ius-12.20.012/tools/ovm/"
  alias gouvm "cd /proj/RDCH96/workspace/rotang/uvm_training_1.1"
  alias senv 'source ~/setenv_temp'
  alias wh 'which'
  alias scsh 'source ~/.cshrc'
  alias tag "dssc tag RFR-g -replace" 
  alias ic "icds -f bin/icds.init"
  alias hvpa 'hvp annotate -plan ../vpm/ctr_blk.xml -dir simv.vdb -show_ratio -group ratio | & tee hvp.out'
  alias ssync '/home/diskread/bin/spyder_sync_setup'
  alias ssync_aca '/home/diskread/bin/lotus_sync_setup'

# Create new sim directory
  alias s0 "mkdir sim0 ; cd sim0 ; ln -s ../sim/Makefile; make setup"
  alias s1 "mkdir sim1 ; cd sim1 ; ln -s ../sim/Makefile; make setup"
  alias s2 "mkdir sim2 ; cd sim2 ; ln -s ../sim/Makefile; make setup"
  alias s3 "mkdir sim3 ; cd sim3 ; ln -s ../sim/Makefile; make setup"
  alias s4 "mkdir sim4 ; cd sim4 ; ln -s ../sim/Makefile; make setup"
  alias s5 "mkdir sim5 ; cd sim5 ; ln -s ../sim/Makefile; make setup"
  alias sr "mkdir sim_regr ; cd sim_regr ; ln -s ../sim/Makefile; make setup"

# rcrun command
  alias run "icsub -q medium rcrun -ignore_driver_checks -64bit"
  alias runn "icsub -q medium rcrun -64bit"
  alias brun "bsub_rcrun -ignore_driver_checks -64bit"
  alias runr 'run_regress -rcrun_options "-ignore_driver_checks"'
  ##alias run "icsub -q medium rcrun"
  alias bp "bpeek -f"
# ------------------------------------------------}
 # PROJ="MAMBA"
 # set PROJ

 set prompt="[%n@%m]: `pwd`\n\!% "
 if ($?ICDS_HOME) then
   set prompt="ICDS:$prompt"
 endif
 set cmdh = "\!"
 alias cd 'chdir \!:*; set prompt="[%n@%m]: `pwd`\n$cmdh% "'

  set SYNC_PROJECT_CFGDIR=~diskread;
  set PATH="$SYNC_PROJECT_CFGDIR/bin:${PATH}";
  set PATH="../tb/bin:../bin:${PATH}";
  set PATH="/proj/RDCH106/workspace/rotang/emojify-master:${PATH}";
  set AMS_NEW_SFE NO
  #  set path=($path /home/misun/mytools/bin)

# Personal Alias

  alias ppath "PATH ${PATH}:${HOME}/project/bin"
  alias integer "typeset -i"
  alias r "fc -e -"
  #alias type "whence -v"
  alias so 'source'
  alias ds 'du -sh'
  alias mgpg "pstops '2:0L@0.7(21cm,0)+1L@0.7(21cm,13.5cm)'"
  alias mgpg2 "pstops '2:0L@0.65(21cm,0)+1L@0.65(21cm,13.5cm)'"
  alias gsv "ghostview "
  alias df "df -k"
  alias pv "pageview "
  alias ted 'textedit '
  alias te 'nedit '
  alias te2 "dtpad "
  alias ls "ls -F  --color"
  alias l "ls -al"
  alias ll "ls -al"
  alias lt "ls -lt"
  alias lf "ls -l | grep -v '/'"
  alias lsa "ls -a"
  alias lsl "ls -l"
  alias lst "ls -t"
  alias llm "ls -al | more"
  alias clr "clear"
  alias cln "rm *%"
  alias pd "pushd cwd"
  alias h "history"
  alias psa "ps -a"
  alias psx "ps -cfA"
  alias rp "realplay &"
  alias bin "cd ~/bin"
  alias temp "cd ~/temp"
  alias clsbk "rm -r ~/.wastebasket/*"
  alias acrd "acroread "
  alias acrd4 "/tools/acrobat4/bin/acroread "
  alias acrd5 "/utils/bin/acroread "
  alias acrd7 "/tools/acroread-7.0/bin/acroread "
  alias path "echo $PATH"
  alias host "uname -n"
  alias envs "env | sort"
  alias printers "lpstat -t"
  alias xtm "/usr/openwin/bin/xterm -sb -bg black -fg green -fn lucidasanstypewriter-14 -e tcsh &"
  alias xtm0 "/usr/openwin/bin/xterm -sb -bg black -fg green -fn lucidasanstypewriter-14 &"
  alias dtm "dtterm -bg black -fg green -geo 132x60 -fn lucidasanstypewriter-14 &"
  alias mla "'matlab -nojvm &'"
  alias mla6 "'matlab6 &'"
  alias help "less ~/bin/memo"
  alias uhelp "less ~/bin/unixhelp"
  alias mw "mwaves "
  alias hspice "'hspice -l '"

  #  alias da "$SYNOPSYS/sparcOS5/syn/bin/design_analyzer"
  #  alias dv "$SYNOPSYS/sparcOS5/syn/bin/design_vision"
  #  alias sold "$SYNOPSYS/sold &"
  alias ncvdoc "acroread /sopt/ldv-5.5/doc/ncvlog/ncvlog.pdf &"
  alias cad 'cd ~/cadence'
  alias vsh 'vim  ~/.cshrc'

# EDA tools related -----------------------------------------------------------------

  alias nclic 'lmstat -a -i AMS_Option_to_incisive -c $CDS_LIC_FILE'
  alias amsload "lsload -s amsincisive"
  alias ncvdoc "acroread /sopt/ldv-5.5/doc/ncvlog/ncvlog.pdf &"
  alias sold "/sopt/syn-2005.09/worldview/bin/sold &"
  alias hspice 'hspice -l '
  alias mw "mwaves "
  alias mla 'matlab -nojvm '
  alias area 'grep Total area '
  alias power 'grep "Cell Leakage Power" '
  alias areas 'grep "Total area" * '
  alias powers 'grep "Cell Leakage Power" * '
  alias arealog 'grep "Total area" *log* '

  alias vl "verilint "
  alias vi 'vim '

# Mirror project related -----------------------------------------------------------
  
#  alias mirr "cd /home/diskread/synchronicity/mirrors/"
#  alias mlt "cd /home/diskread/synchronicity/mirrors/copperheadlt/"
#  alias mltb "cd /home/diskread/synchronicity/mirrors/copperheadlt/vb1/fcenv/"
#  alias mltc "cd /home/diskread/synchronicity/mirrors/copperheadlt/vc1/fcenv/"
#  alias mlts "cd /home/diskread/synchronicity/mirrors/cult16s/"
#  alias mltsa "cd /home/diskread/synchronicity/mirrors/cult16s/va1/fcenv/"
#  alias mltsb "cd /home/diskread/synchronicity/mirrors/cult16s/vb1/fcenv/"
#  alias mltsc "cd /home/diskread/synchronicity/mirrors/cult16s/vc1/fcenv/"
#  alias mlts11 "cd /home/diskread/synchronicity/mirrors/cult11slp/va1/fcenv/"
#  alias mslp "cd /home/diskread/synchronicity/mirrors/cult11slp/va1/fcenv/"
#  alias mace "cd /home/diskread/synchronicity/mirrors/anaconda_branches/tsmc_ce/fcenv/"
#  alias madt "cd /home/diskread/synchronicity/mirrors/anaconda_branches/tsmc_dt/fcenv/"
#  alias maep "cd /home/diskread/synchronicity/mirrors/anaconda_branches/tsmc_ep/fcenv/"
#  alias manb "cd /home/diskread/synchronicity/mirrors/anaconda_branches/tsmc_nb/fcenv/"
#  alias ma1 "cd /home/diskread/synchronicity/mirrors/anaconda_va1/"
#  alias mae1 "cd /home/diskread/synchronicity/mirrors/anaconda_va1/va1/epdt/fcenv/"
#  alias mac1 "cd /home/diskread/synchronicity/mirrors/anaconda_va1/va1/nbce/fcenv/"

# Workspace project directory related ----------------------------------------------

# Current project related --------------------------------------------------------
#  alias mclaren "cd /proj/RDCH30/workspace/$USER/project/"
#  alias mclaren33 "cd /proj/RDCH33/workspace/$USER/project/"
#  alias projs "cd /proj/RDCH10/workspace/$USER/project/"
#  alias proj "cd /proj/RDCH10/workspace/$USER/project/cult11slp/va1/fcenv/"


# Synchronicity related ----------------------------------------------------------
  alias dst "dssc tag"
  alias dsvhist "dssc vhistory -all "
  alias dsls "dssc ls "
  alias dslock "dssc ls -locked "
  alias dspop "dssc pop -rec -uni -get -ver"
  alias dsu "dssc url"
  alias diff "dssc diff"
  alias dscomp "dssc compare|grep -v Unmanaged"
  alias comp "dssc compare"
  alias dssel "dssc url selector"

# Unix login related ------------------------------------------------------------
  alias cn05 "rlogin shsun05"
  alias cn07 "rlogin shsun07"
  alias cn08 "rlogin shsun08"
  alias cn09 "rlogin shsun09"
  alias cn10 "rlogin shsun10"
  alias cn12 "rlogin shsun12"
  alias cn13 "rlogin shsun13"
#  alias go "icds -f mamba.init"
  alias spon " source ~/.kshrc_ponderosa"
  alias so "source"
  alias icsq "icsub -q small rcrun "
  alias icsqv "icsub -q small rcrun -probe_all -verdi"
  alias run_verdi "run_verdi"
  alias brcrun "bsub_rcrun -queue large"
  alias rcrun_comp  'icsub -qa -q medium -R "select[osname==centos]&&(oslevel==6)" -do rcrun -compile -comp_tests'
  ##alias runverdi "icsub -q medium run_verdi"
  alias runverdi 'icsub -q medium run_verdi'
  ##alias runverdi 'icsub -qa -q medium -R "rusage[mem=200000]" -R "select[osname==centos&&(oslevel==6)]" -N -do run_verdi'
  ##alias runverdi 'icsub -qa -q large -R "rusage[mem=200000]" -R "select[osname==centos&&(oslevel==6)]" -N -do run_verdi'
  #  alias pq "icsub -qa -q medium -R \"select[osname  'redhat'&&oslevel  '4']\" -N -do -s \"ldv@9.20.033,vmanager@9.20.012\""
  #  
  #  alias bq "icsub -qa -q medium -R \"select[osname  'redhat'&&oslevel  '4']\" -N -do -s \"ldv@6.20.006,vmanager@8.20.003\""

  #  alias gi "/usr/X11R6/bin/gvim"
  #  alias gv '/tools/cfr/bin/gvim'
  alias gv '/usr/bin/gvim'


  #typeset|grep '^integer cdx$' > /dev/null || integer cdx=0
  #typeset|grep '^integer cdsx$' > /dev/null || integer cdsx=0
  set history=1000

  #function cdhelp
  #{
  #    cat <<-"EOF"
  #        Usage: cdinit  [<file>]
  #        Usage: cdcl
  #            Initialize directory list and stack.
  #            Clear directory list and stack.
  #
  #        Usage: cdfind  <path> [quiet]
  #        Usage: cdgrep  <partial path> [first]
  #            Find a directory, by exact match in the cd list.
  #            Find matching directories in the cd list.
  #
  #        Usage: cdls
  #        Usage: cdrf    [-a|--append] [<files>|-]
  #            Show the cd list. Use this to save your cd list.
  #            Read in a cd list and replace the current cd list.
  #
  #        Usage: cdsv    [<directory paths>] (if none given then CWD)
  #            Save the given or current directory to the cd list.
  #
  #        Usage: cdow    <index>
  #            Overwrite the given entry in the cd list with the CWD.
  #
  #        Usage: cdto    <index>|<path>|[+]<partial path>
  #            Change the current directory to an entry from the cd list,
  #            or, if a path is given, then change to the given path and
  #            save to the cd list.
  #
  #        Usage: cdrm [<path>|<index>]
  #            Remove a directory, or the current directory from the cdlist.
  #
  #        Usage: cdsort
  #            Sort the cd list (alphanumerically)
  #
  #        Usage: pushd   [<directory>]
  #        Usage: popd    [<number>]
  #        Usage: rightd  [<number>] (reverse of popd)
  #        Usage: dirs    (shows dirs in pushd/popd stack)
  #            Directory stack, similar to the C-Shell built-ins of similar names.
  #EOF
  #}
  #
  #function cdfind
  #{
  #    typeset p dir
  #    integer i
  #    if [[ $# -lt 1 || -z "$1" ]]
  #    then
  #        print "Usage: cdfind <path> [quiet]"
  #        return 5
  #    fi
  #    i=0
  #    p="$1"
  #    [[ "$1" != /* ]] && p="$PWD/$1"
  #    for dir in "${cdlist[@]}"
  #    do
  #        if [[ "$p" = "$dir" ]]
  #        then
  #            if [[ "$2" != quiet ]]
  #            then
  #                print "Found at index $i"
  #                return 0
  #            fi
  #            return $i
  #        fi
  #        i=i+1
  #    done
  #    return 255
  #}
  #
  #function cdgrep
  #{
  #    typeset i s
  #    integer i=0 s=1
  #    if [[ $# -lt 1 || $# -gt 2 || -z "$1" ]]
  #    then
  #        print "Usage: cdgrep <partial path> [first]"
  #    fi
  #    while [[ i -lt cdx ]]
  #    do
  #        if eval "[[ \"${cdlist[i]}\" = *${1}* ]]"
  #        then
  #            print "$i ${cdlist[i]}"
  #            s=0
  #            [[ "$2" = first ]] && return 0
  #        fi
  #        i=i+1
  #    done
  #    return $s
  #}
  #
  #function cdshow
  #{
  #    typeset found_at
  #    cdfind "$PWD" quiet
  #    found_at=$?
  #    [[ $found_at -eq 255 ]] && found_at='[unsaved]'
  #    print "$found_at $PWD"
  #    return 0
  #}
  #
  #function cdto
  #{
  #    typeset i j dir
  #    integer i
  #    if [[ $# -ne 1 || -z "$1" ]]
  #    then
  #        print "Usage: cdto <index>|<path>|[+]<partial path>"
  #    fi
  #    if [[ "$1" = +([0-9]) ]]
  #    then
  #        if cd "${cdlist[$1]}"
  #        then
  #            print "$1 ${cdlist[$1]}"
  #            return 0
  #        fi
  #    else
  #        if [[ "$1" != \+* && -d "$1" ]]
  #        then
  #            if cd "$1"
  #            then
  #                cdsv > /dev/null
  #                cdshow
  #                return 0
  #            fi
  #        fi
  #        cdgrep "${1#\+}" first|read j dir
  #        if [[ -d "$dir" ]]
  #        then
  #            if cd "$dir"
  #            then
  #                cdsv > /dev/null
  #                cdshow
  #                return 0
  #            fi
  #        fi
  #    fi
  #    print "Could not cd to $1"
  #    return 1
  #}
  #
  #function cdls
  #{
  #    integer i=0
  #
  #    while [[ i -lt cdx ]]
  #    do
  #        print $i ${cdlist[i]}
  #        i=i+1
  #    done
  #}
  #
  #cdcl ()
  #{
  #        cdx=0
  #        cdsx=0
  #        unset cdlist
  #        unset cdstack
  #        set -A cdlist
  #        set -A cdstack
  #}
  #
  #function cdsv
  #{
  #    typeset dir current
  #    integer i
  #    if [[ "$1" = -h || "$1" = --help ]]
  #    then
  #        print "Usage: cdsv [<directory paths>] (if none given then CWD)"
  #        return 1
  #    fi
  #    # Look for $PWD in cdlist[]
  #    current=""
  #    if [[ $# -eq 0 ]]
  #    then
  #        current="current "
  #        set -- "$PWD"
  #    fi
  #    for dir in "$@"
  #    do
  #        cdfind "$dir" quiet
  #        i=$?
  #        if [[ $i -ne 255 ]]
  #        then
  #            print "The ${current}directory $dir is already in the cdlist ($i)"
  #            continue
  #        fi
  #        #cdlist[${#cdlist[@]}]="$PWD"
  #        cdlist[cdx]=$PWD
  #        cdx=cdx+1
  #    done
  #}
  #
  ## overwrite entry
  #function cdow
  #{
  #    integer i
  #    if [[ $# -ne 1 || "$1" != +([0-9]) ]];
  #    then
  #        print "Usage: cdow index#(see cdls)"
  #        return 1
  #    fi
  #    cdfind "$PWD" quiet
  #    i=$?
  #    if [[ "$1" -gt ${#cdlist[@]} ]]
  #    then
  #        print "Index is beyond cdlist end ($1 > ${#cdlist[@]})"
  #        return 1
  #    fi
  #    if [[ $i -ne 255 ]]
  #    then
  #        print "The current directory is already in the cdlist ($i)"
  #        return 1
  #    fi
  #    cdlist[$1]=$PWD
  #    return 0
  #}
  #
  #function cdrf
  #{
  #    typeset f status dir spath
  #    typeset cdx_copy cdlist_copy usage
  #    integer cdx_copy=0
  #
  #    usage="Usage: cdrf [-a|--append] [<files>|-]"
  #    status=1
  #
  #    set -A cdlist_copy --
  #
  #    # Options
  #    while [[ $# -gt 0 && "$1" = -?* ]]
  #    do
  #        case "$1" in
  #            -s|--strip)
  #                spath=$2
  #                shift
  #                ;;
  #            -a|--append)
  #                cdx_copy=$cdx
  #                set -A cdlist_copy -- "${cdlist[@]}"
  #                ;;
  #            *)  print "$usage"
  #                return 1
  #                ;;
  #        esac
  #        shift
  #    done
  #
  #    # Default to reading stdin
  #    [[ $# -eq 0 ]] && set -- -
  #
  #    # Process cdlist files
  #    for f in "$@"
  #    do
  #        if [[ "$f" = - ]]
  #        then
  #            # STDIN
  #            sed -e 's/^[0-9]* //' | while read dir
  #            do
  #                    dir=${dir#$spath}
  #                    [[ "$dir" != /* ]] && dir="$PWD/$dir"
  #                    cdlist_copy[cdx_copy]=${dir}
  #                    cdx_copy=cdx_copy+1
  #            done
  #            status=0
  #            continue
  #        fi
  #
  #        # Find the cdlist file
  #        if [[ ! -f "$f" && ! -f "$HOME/.cdpath.$f" ]]
  #        then
  #            print "No such cdpath file $p or $HOME/.cdpath.$f"
  #            continue
  #        fi
  #
  #        [[ ! -f "$f" && -f "$HOME/.cdpath.$f" ]] && f="$HOME/.cdpath.$f"
  #
  #        # Read the cdlist file
  #        sed -e 's/^[0-9]* //' "$f" | while read dir
  #        do
  #                dir=${dir#$spath}
  #                [[ "$dir" != /* ]] && dir="$PWD/$dir"
  #                cdlist_copy[cdx_copy]=${dir}
  #                cdx_copy=cdx_copy+1
  #        done
  #        status=0
  #    done
  #
  #    [[ $status -ne 0 ]] && return $status
  #
  #    # Install new cdlist
  #    cdcl
  #    cdx=$cdx_copy
  #    set -A cdlist -- "${cdlist_copy[@]}"
  #    return 0
  #}
  #
  #function cdsort
  #{
  #    cdls | sed -e 's/^[0-9]* //' | sort -u | cdrf -
  #    cdls
  #}
  #
  #function cdrm
  #{
  #    integer i
  #    if [[ -n "$1" && "$1" != +([0-9]) ]]
  #    then
  #        cdfind "${1:-$PWD}" quiet
  #        i=$?
  #    elif [[ -n "$1" && "$1" = +([0-9]) ]]
  #    then
  #        i=$1
  #    elif [[ $# -ne 0 ]]
  #    then
  #        print "Usage: cdrm <path>|<index>"
  #        return 1
  #    else
  #        cdfind "${1:-$PWD}" quiet
  #        i=$?
  #    fi
  #    if [[ "$i" -eq 255 ]] && return 1
  #    then
  #        cdfind "${1:-$PWD}"
  #    fi
  #
  #    cdls|grep -v "^${i} "|sed -e 's/^[0-9]* //'|cdrf
  #    i=$?
  #    cdls
  #    return $i
  #}
  #
  #function pushd
  #{
  #    if [[ $# -gt 0 && ! -d "$1" ]]
  #    then
  #        print "Can't cd to: $1"
  #        return 1
  #    fi
  #    cdstack[$cdsx]="$PWD"
  #    if cd "${1:-.}"
  #    then
  #        cdsx=cdsx+1
  #        cdstack[cdsx]="$PWD"
  #        [[ "$2" = sv || "$2" = save ]] && cdsv
  #        cdshow
  #    else
  #        print "Could not cd to $1"
  #        return 1
  #    fi
  #    return 0
  #}
  #
  #function pushdsv
  #{
  #    pushd "$1" save
  #}
  #
  #function popd
  #{
  #    if [[ $((cdsx-${1:-1})) -lt 0 || $((${#cdstack[@]} - ${1:-1})) -lt 0 ]]
  #    then
  #        print "Empty stack or popping too much"
  #        return 1
  #    fi
  #    if [[ ! -d "${cdstack[cdsx-${1:-1}]}" ]]
  #    then
  #        print "Can't cd to: ${cdstack[cdsx-${1:-1}]}"
  #        return 2
  #    fi
  #    if cd "${cdstack[cdsx-1]}"
  #    then
  #        cdsx=cdsx-1
  #        cdshow
  #    else
  #        print "Could not popd to ${cdstack[cdsx-1]}"
  #        return 1
  #    fi
  #    return 0
  #}
  #
  #function dirs
  #{
  #    integer i
  #    if [[ ${#cdstack[@]} -eq 0 ]]
  #    then
  #        print "Empty stack"
  #        return 1
  #    fi
  #    i=1
  #    print -n "${cdstack[0]}"
  #    while [[ $i -le $((cdsx)) && $i -le ${#cdstack[@]} ]]
  #    do
  #        print -n " ${cdstack[i]}"
  #        i=i+1
  #    done
  #    if [[ ${#cdstack[@]} -gt $cdsx && $i -lt ${#cdstack[@]} ]]
  #    then
  #        print -n " <-> "
  #        while [[ $i -lt ${#cdstack[@]} ]]
  #        do
  #            print -n " ${cdstack[i]}"
  #            i=i+1
  #        done
  #    fi
  #    print
  #    return 1
  #}
  #
  #function rightd
  #{
  #    typeset i
  #    integer i
  #    if [[ -n "$1" && "$1" != +([0-9]) ]]
  #    then
  #        print "Usage: rightd [<number>]"
  #        return 1
  #    fi
  #    i=${1:-1}
  #    if [[ ${#cdstack[@]} -le $((cdsx+i)) ]]
  #    then
  #        print "No directories to the right on the stack"
  #        return 1
  #    fi
  #    if [[ ! -d "${cdstack[cdsx+i]}" ]]
  #    then
  #        print "Can't cd to: ${cdstack[cdsx+i]}"
  #        return 2
  #    fi
  #    if cd "${cdstack[cdsx+i]}"
  #    then
  #        cdsx=cdsx+i
  #        cdshow
  #    else
  #        print "Could not cd to ${cdstack[cdsx+i]}"
  #        return 1
  #    fi
  #    return 0
  #}
  #
  #cdinit ()
  #{
  #    [[ -n "${recd}" ]] && return 0
  #    cdcl
  #    if [[ $# -eq 0 && -f ~/lib/cdpaths ]]
  #    then
  #        cdrf < ~/lib/cdpaths
  #    elif [[ $# -eq 1 ]]
  #    then
  #        cdrf "$1"
  #    fi
  #    cdls
  #}
  #
  #vicd ()
  #{
  #    ${EDITOR:-vi} ~/.kshcd
  #}
  #
  #recd ()
  #{
  #    typeset recd
  #    recd=inprogress
  #    . ~/.kshcd
  #    recd=""
  #}
  #
  ## USER CODE MUST BE ENTERED ABOVE THIS LINE!
  ## ICDS-POST-BEGIN - DO NOT EDIT THIS SECTION
  ## Includes icds builtins - kshrc.poststub
  ##
  ##
  #if [ -n "$ICDS_LAUNCH_MODE" ]
  #then
  #    if [ -s $ICDS_SYS/sh/icds.func ]
  #    then
  #        . $ICDS_SYS/sh/icds.func
  #    fi
  #fi
  ##
  ## ICDS-POST-END - end ICDS section
  ##
  setenv UVMHOME "$work_space/uvm_training_1.1/uvm/uvm1-1_cdns"
  setenv NOVAS_HOME "/tools/verdi-2014.12-sp1/"

  ### generate ann.xml ###
  ## 'hvp annotate -plan ../vpm/ctr_blk.xml -dir simv.vdb -mod ../vpm/ctr_blk_filter.hvp -show_ratio -group ratio | & tee hvp.out'
  ## 'hvp annotate -plan ../vpm/ctr_blk.xml -dir simv.vdb -show_ratio -group ratio | & tee hvp.out'

  ### Merge the update from branch ###
  # dssc co -merge -overlay exp_ctr_gplus:Latest filename

  ### Loading DVE with Vplan ###
  # dve -cov -plan   -dir simv.vdb
  ### check-in file to new branch###
  # dssc mkbranch Trunk_ctr filename
  # dssc ci -new -branch Trunk_ctr filename
  # make xml_links
  # verdi -cov -covdir simv.vdb -plan ../../system/vpm/spyder_ferrari_delta.hvp -mod ../vpm/ctr_blk.hvpmod



 
