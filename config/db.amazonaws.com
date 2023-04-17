$TTL    1d ;
@       IN      SOA     ns1.amazonaws.com. root.amazonaws.com. (
                  3      ; Serial
                  1d     ; Refresh
                  1h     ; Retry
                  1w     ; Expire
                  1h )   ; Negative Cache TTL

; name servers - NS records
     IN      NS      ns1.amazonaws.com.

; name servers - A records
ns1.amazonaws.com.                                                  IN      A      127.0.0.2

amazonaws.com.                                                      IN      A      127.0.0.1
s3.eu-west-1.amazonaws.com.                                         IN      A      127.0.0.1
devtest.meta-data.config-files.s3.eu-west-1.amazonaws.com.          IN      A      127.0.0.1
