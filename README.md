<br />
<div align="center">
  <a href="">
    <img src="https://tmate.io/img/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">TSH - tmate</h3>

  <p align="center">
    A bash script to push VPWS tmate config on Debian or RHEL server
    <br />
    <a href="https://github.com/itsmrval/tsh/issues">Report a bug</a>
    ·
    <a href="https://github.com/itsmrval/tsh/pulls">Pull request</a>
  </p>
</div>


## Usage

You need to download the config below:
- On debian based distribution:
  ```sh
  bash <( curl -s https://tsh.vpws.eu/debian.sh )
  ```
- On RHEL based distribution:
  ```sh
  bash <( curl -s https://tsh.vpws.eu/rhel.sh )
  ```

Then run tmate
  ```sh
  tmate
  ```

## Hastebin

If you need to upload config files on hastebin:
```sh
bash <( curl -s https://tsh.vpws.eu/paste.sh )
```
