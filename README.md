# Handling_errors

The purpose of this project is to create a smart contract that enables the secure and efficient execution of transactions on a blockchain network. The smart contract includes require(), assert(), and revert() statements, which provide validation and error-handling mechanisms. The require() statement checks conditions and throws an exception if they are not met. The assert() statement checks for internal errors and reverts the transaction if any are found. The revert() statement cancels the transaction and reverts any changes made if a condition is not satisfied

# Description

### require():
The require() statement is used to check if certain conditions are met within a smart contract. If the conditions are not satisfied, the execution of the contract is halted, and any changes made are reverted. It acts as a validation mechanism to ensure that specific requirements are fulfilled before proceeding with the execution of the contract.

### assert():
The assert() statement is used to validate internal consistency within a smart contract. It verifies certain conditions and throws an exception if they are not met. If an assertion fails, it indicates a critical error in the contract's logic or state. The transaction is immediately reverted, and any changes made are undone to maintain the integrity of the blockchain.

### revert():
The revert() statement is used to cancel a transaction and undo any changes made if certain conditions are not satisfied. It provides a way to handle exceptional cases or invalid inputs. When a revert() statement is executed, the transaction is immediately halted, and any modifications made to the contract's state are reversed, ensuring that the blockchain remains in a consistent and predictable state.

### Executing program
To run the programs in this repository we need to use Remix, an online Solidity IDE . We can find it here: https://remix.ethereum.org/
Now we need to create a new file by clicking on the '+' and name the file as you wish with an extension .sol(Ex: Error handling.sol)
And now copy the code from this repository in the 'challenge1_com.sol'

## Compiling the Program
To compile the code click on the third icon and set the compiler version to the required version and set it to auto compile.
And after compiling the code sucessfully click on the below icon and deploy your code.

## Author : Venkateswarlu
