import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure SymbolicDynamicsAndShiftSpacesPackage where
  shiftSpace : Type u
  alphabet : Type v
  forbiddenWords : Set (List alphabet)
  periodicPoints : Prop
  topologicalEntropy : Prop
  zetaFunction : Prop
  periodicPointsTerm : periodicPoints
  topologicalEntropyTerm : topologicalEntropy
  zetaFunctionTerm : zetaFunction

structure SymbolicDynamicsAndShiftSpacesEvidence (S : SymbolicDynamicsAndShiftSpacesPackage) where
  periodicPointsClosed : S.periodicPoints
  topologicalEntropyClosed : S.topologicalEntropy
  zetaFunctionClosed : S.zetaFunction

def SymbolicDynamicsAndShiftSpacesClosed (S : SymbolicDynamicsAndShiftSpacesPackage) : Prop :=
  S.periodicPoints ∧ S.topologicalEntropy ∧ S.zetaFunction

theorem symbolic_dynamics_and_shift_spaces_closed_from_evidence
    (S : SymbolicDynamicsAndShiftSpacesPackage)
    (E : SymbolicDynamicsAndShiftSpacesEvidence S) : SymbolicDynamicsAndShiftSpacesClosed S := by
  exact And.intro E.periodicPointsClosed
    (And.intro E.topologicalEntropyClosed E.zetaFunctionClosed)

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse