USING AxUnit.Assert;
USING Siemens.Ax;

NAMESPACE Test
    {TestFixture}
    CLASS TestInt
        // Parametrized tests
        {Test(v1 := 1, v2 := 2, expectedResult := 3)}
        {Test(v1 := -1, v2 := 1, expectedResult := 0)}
        {Test(v1 := 32000, v2 := 32000, expectedResult := DINT#64000)}
        METHOD PUBLIC TestAddWithInts
            VAR_INPUT
                v1 : INT;
                v2 : INT;
                expectedResult : DINT;
            END_VAR
            Equal(expected := expectedResult, actual := Add(v1, v2));

        END_METHOD
    END_CLASS
END_NAMESPACE