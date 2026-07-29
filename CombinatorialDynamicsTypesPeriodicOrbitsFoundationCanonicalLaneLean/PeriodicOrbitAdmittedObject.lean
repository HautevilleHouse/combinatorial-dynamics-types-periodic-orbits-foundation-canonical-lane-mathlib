import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure PeriodicOrbitAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  closedOrbit : Prop
  periodicDynamics : Prop
  orbitType : Type
  orbitTopology : TopologicalSpace orbitType
  homeomorphicToOrbit : Prop
  conclusion : homeomorphicToOrbit

structure PeriodicOrbitEndgameState where
  object : PeriodicOrbitAdmittedObject

def PeriodicOrbitWitnessClosed (O : PeriodicOrbitAdmittedObject) : Prop :=
  O.homeomorphicToOrbit

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse