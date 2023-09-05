USING AxUnit;
USING Siemens.Ax;

NAMESPACE Test

    {TestFixture}
    CLASS testHelloWorld
        {Test}
        METHOD PUBLIC MyTestMethod
            VAR_EXTERNAL
                myString : String;
            END_VAR
            Assert.Equal(actual := HelloWorldFunction(), expected := 'Hello AX World');
        END_METHOD
    END_CLASS

END_NAMESPACE