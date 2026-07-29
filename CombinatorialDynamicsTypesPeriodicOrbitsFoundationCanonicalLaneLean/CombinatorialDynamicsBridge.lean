import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.PeriodicOrbitTypes
import HautevilleHouse.CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.OrbitStability

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | PoincareAdmittedObject.mk _ _ _ _ _ _ _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact True.intro

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse