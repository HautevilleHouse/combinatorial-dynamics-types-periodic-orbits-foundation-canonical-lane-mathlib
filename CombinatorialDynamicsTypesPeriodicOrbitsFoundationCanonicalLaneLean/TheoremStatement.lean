import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure PeriodicOrbitAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  periodicOrbit : space → Prop
  orbitCompact : Prop
  orbitInvariant : Prop
  conclusion : orbitCompact ∧ orbitInvariant

def PeriodicOrbitWitnessClosed (O : PeriodicOrbitAdmittedObject) : Prop :=
  O.orbitCompact ∧ O.orbitInvariant

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse