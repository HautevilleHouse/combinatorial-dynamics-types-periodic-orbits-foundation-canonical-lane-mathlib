import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure PeriodicOrbitAdmittedObject where
  space : Type
  dynamics : Type
  orbitType : Prop
  simpleClosedCurve : Prop
  conclusion : simpleClosedCurve

def PeriodicOrbitWitnessClosed (O : PeriodicOrbitAdmittedObject) : Prop :=
  O.simpleClosedCurve

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse