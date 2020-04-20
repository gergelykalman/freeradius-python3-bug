# freeradius-python3-bug
Repo for reproducing the freeradius-python3 bug in Ubuntu Focal Fossa with package 3.0.20+dfsg-3build1

#### Run with
`docker build . -t freeradius-test:latest`

`docker run -it freeradius-test:latest`

Scroll up for error


#### The error text
```
Mon Apr 20 17:12:57 2020 : Debug: rlm_passwd: nfields: 3 keyfield 0(User-Name) listable: no
Mon Apr 20 17:12:57 2020 : Debug:   # Instantiating module "python3" from file /etc/freeradius/3.0/mods-enabled/python3
Mon Apr 20 17:12:57 2020 : Info: Python version: 3.8.2 (default, Mar 13 2020, 10:14:16)  [GCC 9.3.0]
Mon Apr 20 17:12:57 2020 : Warning: Libpython is not found among linked libraries
Mon Apr 20 17:12:57 2020 : Warning: Failed loading libpython symbols into global symbol table
Mon Apr 20 17:12:57 2020 : Error: do_python_single:568, instantiate - pRet is NULL
Mon Apr 20 17:12:57 2020 : Error: python_error_log:200, Exception type: <class 'SystemError'>, Exception value: null argument to internal routine
Mon Apr 20 17:12:57 2020 : Error: do_python_single:676, instantiate - RLM_MODULE_FAIL
```
