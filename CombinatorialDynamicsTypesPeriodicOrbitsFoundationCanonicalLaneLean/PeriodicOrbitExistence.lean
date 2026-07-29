import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure PeriodicOrbitExistence where
  dynamicalSystem : Type u
  existenceCondition : Prop
  orbitConstructed : Prop
  orbitUniqueness : Prop

def PeriodicOrbitExistenceClosed (E : PeriodicOrbitExistence) : Prop :=
  E.existenceCondition ∧ E.orbitConstructed ∧ E.orbitUniqueness

theorem periodic_orbit_existence_closed (E : PeriodicOrbitExistence) :
    PeriodicOrbitExistenceClosed E := by
  exact And.intro E.existenceCondition (And.intro E.orbitConstructed E.orbitUniqueness)

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse
