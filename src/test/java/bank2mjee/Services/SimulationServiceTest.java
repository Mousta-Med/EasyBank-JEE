package bank2mjee.Services;

import com.bank.bank2mjee.Services.SimulationService;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class SimulationServiceTest {
    static SimulationService simulationService;

    @BeforeAll
    static void setUp() {
        simulationService = new SimulationService();
    }

    @Test
    public void createSimulation() {
        Double capitale = 5000.0;
        int nombremensualite = 14;
        assertEquals(384.5, simulationService.createSimulation(capitale, nombremensualite));
    }
}
