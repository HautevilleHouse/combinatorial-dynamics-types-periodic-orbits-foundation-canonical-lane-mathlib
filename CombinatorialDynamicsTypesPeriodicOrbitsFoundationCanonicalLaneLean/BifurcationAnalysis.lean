import CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.Surgery

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure BifurcationAnalysisPackage {T : PeriodicOrbitType} (U : SurgeryPackage T) where
  bifurcationPointsClassified : Prop
  stabilityTransitionRecorded : Prop
  periodDoublingSequence : Prop
  chaosOnsetDetected : Prop

structure BifurcationAnalysisEvidence {T : PeriodicOrbitType} {U : SurgeryPackage T}
    (B : BifurcationAnalysisPackage U) where
  bifurcationPointsClassifiedClosed : B.bifurcationPointsClassified
  stabilityTransitionRecordedClosed : B.stabilityTransitionRecorded
  periodDoublingSequenceClosed : B.periodDoublingSequence
  chaosOnsetDetectedClosed : B.chaosOnsetDetected

def BifurcationAnalysisClosed {T : PeriodicOrbitType} {U : SurgeryPackage T}
    (B : BifurcationAnalysisPackage U) : Prop :=
  B.bifurcationPointsClassified ∧ B.stabilityTransitionRecorded ∧
  B.periodDoublingSequence ∧ B.chaosOnsetDetected

theorem bifurcation_analysis_closed_from_evidence
    {T : PeriodicOrbitType} {U : SurgeryPackage T}
    (B : BifurcationAnalysisPackage U) (E : BifurcationAnalysisEvidence B) :
    BifurcationAnalysisClosed B := by
  exact And.intro E.bifurcationPointsClassifiedClosed
    (And.intro E.stabilityTransitionRecordedClosed
      (And.intro E.periodDoublingSequenceClosed E.chaosOnsetDetectedClosed))

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse
