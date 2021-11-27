import * as React from "react";
import * as ReactDOM from "react-dom";
import * as TestUtils from "react-dom/test-utils";
import App from "../src/components/App";

it("App is rendered", () => {
    // Render App in the document
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    const appElement: App = TestUtils.renderIntoDocument(<App/>);

    // eslint-disable-next-line react/no-find-dom-node
    const appNode = ReactDOM.findDOMNode(appElement);

    // Verify text contentÒ
    expect(appNode.textContent).toEqual("Hello World!Foo to the barz");
});

describe("Simple test", () => {
    it("should pass", () => {
        expect(1).toEqual(1);
    });
});
