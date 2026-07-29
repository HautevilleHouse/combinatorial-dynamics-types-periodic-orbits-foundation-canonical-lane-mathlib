import HautevilleHouse.CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean.PeriodicOrbitAdmittedObject

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean

structure PeriodicOrbitDynamicsPackage where
  orbitMap : Type u
  timeDomain : Type v
  periodicFunction : timeDomain → orbitMap → orbitMap
  closedTrajectory : Prop
  minimalPeriod : Prop
  stabilityType : Prop

structure PeriodicOrbitDynamicsEvidence (D : PeriodicOrbitDynamicsPackage) where
  closedTrajectoryClosed : D.closedTrajectory
  minimalPeriodClosed : D.minimalPeriod
  stabilityTypeClosed : D.stabilityType

def PeriodicOrbitDynamicsClosed (D : PeriodicOrbitDynamicsPackage) : Prop :=
  D.closedTrajectory ∧ D.minimalPeriod ∧ D.stabilityType

theorem periodic_orbit_dynamics_closed_from_evidence
    (D : PeriodicOrbitDynamicsPackage) (E : PeriodicOrbitDynamicsEvidence D) :
    PeriodicOrbitDynamicsClosed D := by
  exact And.intro E.closedTrajectoryClosed
    (And.intro E.minimalPeriodClosed E.stabilityTypeClosed)

end CombinatorialDynamicsTypesPeriodicOrbitsFoundationCanonicalLaneLean
end HautevilleHouse