import CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure PeriodicOrbitType where
  period : Nat
  combinatorialType : String
  stabilityIndex : Int
  bifurcationData : Prop

structure PeriodicOrbitAdmittedObject where
  orbit : PeriodicOrbitType
  closureStructure : Prop
  periodicOrbitClosed : Prop
  conclusion : closureStructure ∧ periodicOrbitClosed

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse
