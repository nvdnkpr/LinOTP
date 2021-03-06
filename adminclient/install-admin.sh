#!/bin/bash
#
#    LinOTP - the open source solution for two factor authentication
#    Copyright (C) 2010 - 2014 LSE Leading Security Experts GmbH
#
#    This file is part of LinOTP server.
#
#    This program is free software: you can redistribute it and/or
#    modify it under the terms of the GNU Affero General Public
#    License, version 3, as published by the Free Software Foundation.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the
#               GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#
#    E-mail: linotp@lsexperts.de
#    Contact: www.linotp.org
#    Support: www.lsexperts.de
#
##
# This will install the linotpd admin clients
##

tar -zxf src/LinOTPAdminClientCLI/dist/LinOTPAdminClientCLI-*.tar.gz
tar -zxf src/LinOTPAdminClientGUI/dist/LinOTPAdminClientGUI-*.tar.gz
cd LinOTPAdminClientCLI-*
python setup.py build
python setup.py install
cd -
cd LinOTPAdminClientGUI-*
python setup.py build
python setup.py install
cp locale/de/LC_MESSAGES/LinOTP2.mo /usr/share/locale/de/LC_MESSAGES/
cd -

