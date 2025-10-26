@IsTest
private class HelloDeployerTest {
    @IsTest static void testGreet() {
        System.assertEquals('Hello from Dev!', HelloDeployer.greet());
    }
}