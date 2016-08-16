#!/bin/bash

service apache2 start
mongod -dbpath . &