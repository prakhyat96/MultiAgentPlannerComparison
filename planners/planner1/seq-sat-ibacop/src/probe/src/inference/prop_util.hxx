/*
    Miguel Ramirez, Nir Lipovetzky, Hector Geffner
    C^3: A planner for the sequential, satisficing track of the IPC-6
    Copyright (C) 2008  

    Modified by: Nir Lipovetzky
    PROBE: A planner for the sequential, satisficing track of the IPC-7
    Copyright (C) 2011    
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
#ifndef __NFF_PROP_UTILS__
#define __NFF_PROP_UTILS__

#include <vector>
#include <queue>
#include "heuristic/heuristics.hxx"

namespace NFF
{

/**
 * Node type in the relax planning graph
 */

enum Propagator_Node_Type
{
	ATOM = 0,
	OPERATOR,
	ATOM_PAIR,
	OPERATOR_PAIR,
	NONE
};

/**
 * Node in the relax planning graph
 */
class Propagator_Node
{
public:

       Propagator_Node();
	~Propagator_Node();

	Propagator_Node_Type		Type; // Node type
	int				Atom;
	int				Operator;
	Index_Vector			Parents;
	Index_Vector			Children;	
        bool                            is_landmark;
        bool                            safe;
};

typedef std::vector<Propagator_Node*>	Propagation_Graph;


}

#endif // prop_utils.hxx
