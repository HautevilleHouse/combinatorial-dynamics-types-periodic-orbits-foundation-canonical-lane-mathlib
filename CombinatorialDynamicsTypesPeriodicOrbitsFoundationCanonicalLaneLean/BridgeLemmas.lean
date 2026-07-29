import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OrbitWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse
