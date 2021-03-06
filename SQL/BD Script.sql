-- MySQL Script generated by MySQL Workbench
-- Sun Jun 26 17:03:37 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `Contacto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `idEmpleado` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmpleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Gen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Gen` (
  `idGen` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Posicion` VARCHAR(45) NULL,
  `Longitud` DOUBLE NULL,
  PRIMARY KEY (`idGen`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tratamiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tratamiento` (
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Enfermedad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Enfermedad` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Grado` INT NULL,
  `Descripcion` VARCHAR(45) NULL,
  `Tratamiento_Nombre` INT NOT NULL,
  `Tratamiento_Nombre1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Nombre`, `Tratamiento_Nombre`, `Tratamiento_Nombre1`),
  INDEX `fk_Enfermedad_Tratamiento1_idx` (`Tratamiento_Nombre1` ASC) VISIBLE,
  CONSTRAINT `fk_Enfermedad_Tratamiento1`
    FOREIGN KEY (`Tratamiento_Nombre1`)
    REFERENCES `mydb`.`Tratamiento` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Mutacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Mutacion` (
  `idMutacion` INT NOT NULL,
  `CodonAfectado` VARCHAR(45) NOT NULL,
  `Gen_idGen` INT NOT NULL,
  `Enfermedad_Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMutacion`, `Enfermedad_Nombre`),
  INDEX `fk_Mutacion_Gen1_idx` (`Gen_idGen` ASC) VISIBLE,
  INDEX `fk_Mutacion_Enfermedad1_idx` (`Enfermedad_Nombre` ASC) VISIBLE,
  CONSTRAINT `fk_Mutacion_Gen1`
    FOREIGN KEY (`Gen_idGen`)
    REFERENCES `mydb`.`Gen` (`idGen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Mutacion_Enfermedad1`
    FOREIGN KEY (`Enfermedad_Nombre`)
    REFERENCES `mydb`.`Enfermedad` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Animal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Animal` (
  `idAnimal` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Due??o` VARCHAR(45) NULL,
  `Cliente_DNI` INT NOT NULL,
  `Empleado_idEmpleado` INT NOT NULL,
  `Mutacion_idMutacion` INT NOT NULL,
  `Mutacion_Enfermedad_Nombre` VARCHAR(45) NOT NULL,
  `Tratamiento_Nombre` INT NOT NULL,
  `Tratamiento_Nombre1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAnimal`, `Cliente_DNI`, `Tratamiento_Nombre`, `Tratamiento_Nombre1`),
  INDEX `fk_Animal_Cliente_idx` (`Cliente_DNI` ASC) VISIBLE,
  INDEX `fk_Animal_Empleado1_idx` (`Empleado_idEmpleado` ASC) VISIBLE,
  INDEX `fk_Animal_Mutacion1_idx` (`Mutacion_idMutacion` ASC, `Mutacion_Enfermedad_Nombre` ASC) VISIBLE,
  INDEX `fk_Animal_Tratamiento1_idx` (`Tratamiento_Nombre1` ASC) VISIBLE,
  CONSTRAINT `fk_Animal_Cliente`
    FOREIGN KEY (`Cliente_DNI`)
    REFERENCES `mydb`.`Cliente` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Animal_Empleado1`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `mydb`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Animal_Mutacion1`
    FOREIGN KEY (`Mutacion_idMutacion` , `Mutacion_Enfermedad_Nombre`)
    REFERENCES `mydb`.`Mutacion` (`idMutacion` , `Enfermedad_Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Animal_Tratamiento1`
    FOREIGN KEY (`Tratamiento_Nombre1`)
    REFERENCES `mydb`.`Tratamiento` (`Nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
