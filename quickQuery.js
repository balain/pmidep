const debug = require('debug')('quickQuery')
const chalk = require('chalk')

const config = require('./config')
const sqlite3 = require('sqlite3').verbose()
const db = new sqlite3.Database(config.dbFilename)

const { Command } = require('commander')
const program = new Command()
program.version('0.0.1')

program
  .option('-l, --lastname <last name>', 'Find by Last Name')
  .option('-f, --firstname <first name>', 'Find by First Name')
  .option('-p, --pmp <PMP number>', 'Find by PMP Number')
  .option('-i, --id <id>', 'Find by ID')

program.parse(process.argv)

let whereList = []
let valList = []

const LASTNAME = program.lastname
let SQL_FIRSTNAME = ""
let FIRSTNAME = program.firstname

let delim = "=?"

if (program.lastname) {	whereList.push(`LastName${delim}`); valList.push(program.lastname) }
if (program.firstname) { whereList.push(`FirstName${delim}`); valList.push(program.firstname) }
if (program.pmp) { whereList.push(`PMPNumber${delim}`); valList.push(program.pmp) }
if (program.id) { whereList.push(`ID${delim}`); valList.push(program.id) }

const SQL_DATADATE = "SELECT max(DataDate) AS dd FROM latest_data;"
const SQL = "SELECT ID,FirstName,LastName,Email,PMPNumber,PMPDate,PMIJoinDate,PMIExpirationDate,JoinDate,ExpirationDate,PMIAutoRenewStatus,ChapterAutoRenewStatus FROM latest_data WHERE " + whereList.join(' AND ') + " ORDER BY LastName,FirstName;"

debug(`SQL: ${SQL}`)

console.log(chalk.bold(chalk.yellow(`Where List: ${whereList.join(',')}`)))
console.log(chalk.bold(chalk.yellow(`Val List: ${valList.join(',')}`)))

db.all(SQL_DATADATE, function(err, rows) {
	console.log(chalk.bold(chalk.yellow(`Data Date: ${rows[0]['dd']}`)))
	db.all(SQL, valList, function(err, rows) {
		console.table(rows)
	})

})
