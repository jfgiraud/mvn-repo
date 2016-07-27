# pom.xml

Add the following repository to the repositories

    <repositories>
        ...
        <repository>
            <id>jfgiraud-repo</id>
            <url>https://github.com/jfgiraud/mvn-repo/raw/master/repository</url>
        </repository>
        ...
    </repositories>

Add the dependency to the wanted library/version

    <dependency>
        <groupId>com.github.jfgiraud</groupId>
        <artifactId>temmental</artifactId>
        <version>2.0.1</version>
    </dependency>
