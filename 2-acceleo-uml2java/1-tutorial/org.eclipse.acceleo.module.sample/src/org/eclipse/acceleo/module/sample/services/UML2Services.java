package org.eclipse.acceleo.module.sample.services;

import java.util.List;

import org.eclipse.uml2.uml.Class;
import org.eclipse.uml2.uml.Stereotype;

public class UML2Services {
	public boolean hasStereotype(Class clazz, String stereotypeName) {
		List<Stereotype> stereotypes = clazz.getAppliedStereotypes();
		for (Stereotype stereotype : stereotypes) {
			if (stereotype.getName().equals(stereotypeName)) {
				return true;
			}
		}
		return false;
	}
}
