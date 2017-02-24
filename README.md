# pg_mod_sample

## Usage

Build the extension and install.

```
make install
```

Run the extension.

```
db=# CREATE EXTENSION pg_mod_sample;
CREATE EXTENSION
db=# select pg_mod_sample(100);
 pg_mod_sample 
---------------
          -100
(1 row)
```

Run test.

```
make installcheck
```
