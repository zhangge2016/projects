# coding:utf-8
import setting
from apscheduler.schedulers.blocking import BlockingScheduler
from controller.conn_spark import compute_uints


def scheduler(db_config, days, hours, minutes):
    sched = BlockingScheduler(timezone='Asia/Shanghai')
    sched.add_job(func=compute_uints,
                  args=(db_config,),
                  trigger='cron',
                  day=days,
                  hour=hours,
                  minute=minutes)  # second='*/10')
    sched.start()

def parsers():

    parser = argparse.ArgumentParser(description='app, a tool to start flask coding')
    parser.add_argument('--env', help='worked enviroment')
    parser.add_argument('--crontab', help='crontab time, such as (day, hour, minute)')
    args = parser.parse_args()

    if not args.env:
        print('You must supply a env\n')
        parser.print_help()
        exit(0)

    if not args.crontab:
        print('You must supply a crontab\n')
        parser.print_help()
        exit(0)

    return args

if __name__ == '__main__':
    args = parsers()
    if args.env == 'test':
        db_config = setting.test_db_config
    elif args.env == 'pre':
        db_config = setting.pre_db_config
    else:
        db_config = setting.pro_db_config
    (days, hours, minutes) = args.crontab

    scheduler(days=days,
              hours=hours,
              minutes=minutes,
              db_config=db_config)
