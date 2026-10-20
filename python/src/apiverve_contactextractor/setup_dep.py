from setuptools import setup, find_packages

setup(
    name='apiverve_contactextractor',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Contact Extractor scrapes public email addresses, phone numbers, and physical addresses from any web page URL. It tallies the findings and returns unique records found on the page.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/contactextractor?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
