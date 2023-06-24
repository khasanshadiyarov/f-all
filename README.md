# f*
f* (find all) is a tool, which represents sets of aliases to enhance some terminal operations by combining them with searching tools.

## Contents
- [Introduction](#f)
- [Sets](#sets)
    - [Shell](#shell)
    - [Git](#git)
- [See also](#see-also)

## Sets
Set is an aggregation of multiple aliases, which are grouped together by a certain context. Alias is a short terminal command which has pre-defined functionality and used to do a single thing. If your alias conflicts with an alias from the sets, your alias will dominate (see [INSTALL](./INSTALL.md)) unless you gave higher privileges to the tool. Each set or an alias can be installed independently.

### Shell
Shell set provides aliases to work with basic shell commands.
<details>
<summary><code>fcd</code></summary>

```
NAME
    fcd - Find and Change Directory

SYNOPSIS
    fcd [DIR]

DESCRIPTION
    Search for a directory by its rough name and navigate to it.

    [DIR]
        Optional rough or exact name of a directory. Searched as *DIR* and needed to speed up the search process.
```
</details>
<details>
<summary><code>fls</code></summary>

```
NAME
    fls - Find in LiSt

SYNOPSIS
    fls

DESCRIPTION
    Search list of files of the current directory.
```
</details>
<details>
<summary><code>fop</code></summary>

```
NAME
    fop - Find and OPen

SYNOPSIS
    fop [FILE]

DESCRIPTION
    Search for a file by its rough name and open it.

    [FILE]
        Optional rough or exact name of a file. Searched as *FILE* and needed to speed up the search process.
```
</details>
<details>
<summary><code>frm</code></summary>

```
NAME
    frm - Find and ReMove

SYNOPSIS
    frm [DIR_FILE]

DESCRIPTION
    Search for a directory or a file by its rough name and delete it.

    [DIR_FILE]
        Optional rough or exact name of a directory or a file. Searched as *DIR_FILE* and needed to speed up the search process.
```
</details>
<details>
<summary><code>ftc</code></summary>

```
NAME
    ftc - Find and TouCh

SYNOPSIS
    ftc [DIR_FILE]

DESCRIPTION
    Search for a directory or a file by its rough name and create a new one inside or near it.

    [DIR_FILE]
        Required rough or exact name of a directory or a file. Searched as *DIR_FILE* and needed to create a file inside the directory or near the file.
```
</details>
<details>
<summary><code>fmd</code></summary>

```
NAME
    fmd - Find and Make Directory

SYNOPSIS
    fmd [NAME] [DIR] [-c]

DESCRIPTION
    Search for a directory by its rough name and create a new one inside of it.

    [NAME]
        Required exact name of a new directory to be created.

    [DIR]
        Required rough or exact directory name. Searched as *DIR* and needed to find a path and perform the operation.

    -c
        Navigate to the created directory.
```
</details>

### Git
Git set provides aliases to work with Git operations.
<details>
<summary><code>fgs</code></summary>

```
NAME
    fgs - Find in Git Status

SYNOPSIS
    fgs [INDICATOR]

DESCRIPTION
    Search for a changed file and open diff view for it.

    [INDICATOR]
        Optional indicator(s) to search only for changed files from them. Acceptable values:
            M: Modified
            A: Added
            D: Deleted
            R: Renamed
            C: Copied
            U: Unmerged
            ?: Untracked
            !: Ignored
```
</details>
<details>
<summary><code>fgc</code></summary>

```
NAME
    fgc - Find in Git Commits

DESCRIPTION
    Search for a commit and show details about it.
```
</details>
<details>
<summary><code>fgt</code></summary>

```
NAME
    fgt - Find in Git Tags

DESCRIPTION
    Search for a tag and show details about it.
```
</details>
<details>
<summary><code>fgb</code></summary>

```
NAME
    fgb - Find in Git Branches

DESCRIPTION
    Search for a branch and checkout it.
```
</details>

## See also
- [README](./README.md)
