import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure FlowsAndPoincareMapPackage where
  flow : Type u
  poincareSection : Type v
  returnMap : Prop
  periodicOrbitClassification : Prop
  hyperbolicOrbits : Prop
  returnMapTerm : returnMap
  periodicOrbitClassificationTerm : periodicOrbitClassification
  hyperbolicOrbitsTerm : hyperbolicOrbits

structure FlowsAndPoincareMapEvidence (F : FlowsAndPoincareMapPackage) where
  returnMapClosed : F.returnMap
  periodicOrbitClassificationClosed : F.periodicOrbitClassification
  hyperbolicOrbitsClosed : F.hyperbolicOrbits

def FlowsAndPoincareMapClosed (F : FlowsAndPoincareMapPackage) : Prop :=
  F.returnMap ∧ F.periodicOrbitClassification ∧ F.hyperbolicOrbits

theorem flows_and_poincare_map_closed_from_evidence
    (F : FlowsAndPoincareMapPackage)
    (E : FlowsAndPoincareMapEvidence F) : FlowsAndPoincareMapClosed F := by
  exact And.intro E.returnMapClosed
    (And.intro E.periodicOrbitClassificationClosed E.hyperbolicOrbitsClosed)

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse