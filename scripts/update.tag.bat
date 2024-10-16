set TAG=1.48

git push origin :%TAG%
git tag -d %TAG%
git tag %TAG%
git push origin base_v%TAG% --tags

IF "%1"=="nopause" GOTO No1
    pause
:No1 