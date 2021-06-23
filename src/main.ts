import got from "got/dist/source";

export const main = async (): Promise<void> => {
    await recursiveCurl("http://t.incredible.health");
};

interface IBody  {
    description: string;
    left: string;
    right: string;
    back: string;
    atExit: boolean;
}

async function recursiveCurl(url: string): Promise<void> {
    const resp = await got(url, { responseType: 'json' });
    const body = resp.body as IBody;
    const {description, left, right, back, atExit} = body;
    if(atExit !== false) {
        console.log(`description: ${description}`);
        console.log(`left: ${left}`);
        console.log(`right: ${right}`);
        console.log(`back: ${back}`);
        console.log(`atExit: ${atExit}`);
        return;
    }
    if(left) {
        recursiveCurl(left);
    }
    if(right) {
        recursiveCurl(right);
    }
}