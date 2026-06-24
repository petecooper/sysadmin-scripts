#!/bin/bash
sudo journalctl \
--disk-usage \
&& read -p 'Journal vacuum size (e.g. 100M): ' journal_vacuum_size \
&& sudo journalctl \
--vacuum-size="$journal_vacuum_size"
