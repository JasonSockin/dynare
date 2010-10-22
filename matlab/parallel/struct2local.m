function struct2local(S),
% The argument is a structure possibly containing several fields.
% This function will create, in the workspace of the calling function,
% as many variables as there are fields in the structure, assigning
% them the value of the fields.

% Copyright (C) 2009 Dynare Team
%
% This file is part of Dynare.
%
% Dynare is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% Dynare is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with Dynare.  If not, see <http://www.gnu.org/licenses/>.

vnam = fieldnames(S);

for j=1:length(vnam),
    assignin('caller',vnam{j},getfield(S,vnam{j}));
end