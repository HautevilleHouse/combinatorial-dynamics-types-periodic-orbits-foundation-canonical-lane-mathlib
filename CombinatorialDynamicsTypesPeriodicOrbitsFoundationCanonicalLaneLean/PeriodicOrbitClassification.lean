import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.PeriodicOrbitTypes
import HautevilleHouse.CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.OrbitStability

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure PeriodicOrbitClassificationPackage where
  orbitType : PeriodicOrbitType
  stability : OrbitStabilityPackage
  combinatorialCondition : Prop

structure PeriodicOrbitClassificationEvidence (C : PeriodicOrbitClassificationPackage) where
  orbitTypeClosed : periodicOrbitTypeClosed C.orbitType
  stabilityClosed : OrbitStabilityClosed C.stability
  combinatorialConditionClosed : C.combinatorialCondition

def PeriodicOrbitClassificationClosed (C : PeriodicOrbitClassificationPackage) : Prop :=
  periodicOrbitTypeClosed C.orbitType ∧ OrbitStabilityClosed C.stability ∧ C.combinatorialCondition

theorem periodic_orbit_classification_closed_from_evidence (C : PeriodicOrbitClassificationPackage) (E : PeriodicOrbitClassificationEvidence C) : PeriodicOrbitClassificationClosed C := by
  exact And.intro E.orbitTypeClosed (And.intro E.stabilityClosed E.combinatorialConditionClosed)

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse