#    Copyright 2006-2018 Tibor Csernay

#    This file is part of SuperPatient.

#    SuperPatient is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.

#    SuperPatient is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with SuperPatient; if not, write to the Free Software
#    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

try:
    import reportlab  # noqa
    REPORTLAB_IS_MISSING = False
except ImportError:
    REPORTLAB_IS_MISSING = True
else:
    from .type590_bill import consultations, manuals  # noqa
