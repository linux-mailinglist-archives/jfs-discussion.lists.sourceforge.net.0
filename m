Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0509C610408
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Oct 2022 23:10:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ooA8c-0007wB-O7;
	Thu, 27 Oct 2022 21:10:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1ooA8a-0007w4-Gp
 for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Oct 2022 21:10:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5uTInWTCu0PWJ/npxcKTyPRgH0ea+zbSRCrTLeHFxBw=; b=dJOOvtKEDmngcfYnrdC5NM2ZDi
 s6Htmm01k1ssCLH+rfwQim4/2RLB/dPOiGe5qEgoXvqlRZrJMMQXC+SjHClyA07AEzyO4xyBbG7ae
 D3lyhsS4JLWDOUVlnzfxOuo7DJm8eEBt2R4hEHzClqzoO7VgcXbDstZQUWHJOvOYS85k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5uTInWTCu0PWJ/npxcKTyPRgH0ea+zbSRCrTLeHFxBw=; b=OJhFV2M+opDvnPqKBfL8Y8xlMa
 FsD2apckKNZuzM9lZh8tTOGdNUUOE3eb9eXN4RturIYBJUrkabPqZLOX2URMZUYODgHUiu6g6dcmO
 YFOgwTZ25gDR3/ZzYAPLH+ic+Z/THbI5BZn1R9hvfBDfbNn2DCRqaaBmLTscdmtWLTAU=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ooA8S-0001jo-Dz for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Oct 2022 21:10:03 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 29RKH3pT030244;
 Thu, 27 Oct 2022 21:09:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=5uTInWTCu0PWJ/npxcKTyPRgH0ea+zbSRCrTLeHFxBw=;
 b=D0ULKCtPYaFoDlEa52f0+hZklw2GN6wevEATz0kvLOV7MaPDjz6uZPQ3N6uiNI+P/Vu0
 U4sEdelVYuT6S8J2u76yh3CvBiBF9Otw48MW+VsfQ9gWb4dOZe4RiN3JpIhi/tLehg5F
 6taKjQSLm+toE4GIJcHExA026mAwrEfbYuknm4rLZ6eaT4cH2t1FXlbRuCv4UTuAskRS
 VAalx2sORjZz4yNgUk5O/5wia5GLTewfprCuBVVPUM6DMIGZblh1fISHxwnTm9CUblZg
 kLS8/Xxlx9SDMGvtvE3/D+SIn+B4xA7FBH2PlHLeol/y44y07F+6ylybcZK0GbdxQP64 3Q== 
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3kfagv3hy2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Oct 2022 21:09:36 +0000
Received: from pps.filterd
 (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 29RILJ4J032576; Thu, 27 Oct 2022 21:09:35 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2044.outbound.protection.outlook.com [104.47.74.44])
 by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3kfagndyvp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Oct 2022 21:09:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VZ6ryc4DUIaWTtGd6Ca7aW1BcVaw5J6Q4YjXl2yX4oyZAj5ZUAryGko0d/vM8Ggojq8n8ZAnzO/gy2zxH63GnDUBwD/oCsA46pEkjw1keqZROoDOXWxbXWsgvq6hyT/yM0SkaU3dZOwLqs60/zWsbanL7rY/0GAgVChTyunbDA5R72eE0ttMMAKSUptWdYaEHhf+zz5b1K51iRrdJgb5carC49o/KwqXXTWhpFTkXju107YLJcxmXbpbzs6j75d9a4kCHU13ceUPy70BFJ9gDWCYo1K0RcY+FtaFN0WswNvf8UsXLednv4dE5gHVhNOqjiFhhGmpM6xa7LlLbIM2jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5uTInWTCu0PWJ/npxcKTyPRgH0ea+zbSRCrTLeHFxBw=;
 b=ksOiUhKa/BwrgIP1IWyCCCbXqu6S0CG873pCQUkmpT5nvP6QuPukzubJcEjvMCGg5UtFitbC8Z0/1M+wWu3l95Xub6w7LPLjfJKj+bpcnv5+2abYkg4Hc6v0kH0F4ibK5zWV0G8raeAktIV7OWYh+seZ9bBNok0yQfp7USO6O8AWKGDQO1rX9JTOPXsYTBptu+VQlndJjaCNxSHpR9AqPKNvmgqyeamyiE7QtgcB2j2MZfWFusFGk+2r4Avbu1PukrT1rnRXXlE6JRBxUUzWkeL1hgPvJVHq8iHLdDpOXbRc+DsQKdIhRt6DLqUUYjEkbC8Ci8emmhcNe8xM2VDQNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5uTInWTCu0PWJ/npxcKTyPRgH0ea+zbSRCrTLeHFxBw=;
 b=REKghKKqQs9LM8aBsnpchRQ76FjFYI39ZImagx1/Fy9hs7px8UEAt9eCoaAM5LtHeiisD1SmuirFhVkS9bB7IHFFz9Tuc8yF72jHeXhqtLSVZsEg2o8DuBGxtofWgVrvCbhrMeCSU3rpnVK7Z370jAbyNDeGuTAORfTJufszhaE=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by BN0PR10MB5094.namprd10.prod.outlook.com (2603:10b6:408:129::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Thu, 27 Oct
 2022 21:09:34 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::56fd:b251:fc9e:aee4]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::56fd:b251:fc9e:aee4%4]) with mapi id 15.20.5746.028; Thu, 27 Oct 2022
 21:09:33 +0000
Message-ID: <da35a7b4-b8bc-522b-89bc-354d1356eeea@oracle.com>
Date: Thu, 27 Oct 2022 16:09:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Zhang Qilong <zhangqilong3@huawei.com>, willy@infradead.org
References: <20221020074427.54990-1-zhangqilong3@huawei.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <20221020074427.54990-1-zhangqilong3@huawei.com>
X-ClientProxiedBy: CH0PR03CA0409.namprd03.prod.outlook.com
 (2603:10b6:610:11b::17) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|BN0PR10MB5094:EE_
X-MS-Office365-Filtering-Correlation-Id: cec9998e-07a0-40e0-c201-08dab85f8bea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7wcbR92MKSNynfq61BV4xV8kQZl/A6fOvBS/zpn6YYWwJZGVY44WytNR4jnRdXzMbRs5tW/U9dsVkVjZCBxBrKAFh2FZzpc3EQYe778Pbdr/NWvyzt251xyLoDM4Hsp88+h+CgjItMGRpofby00rykSQr+m8TUBbwaTskU82kVWfzRwMw3/b59azURaQ21ni1xxlhXBsn2PtEpFnqy95QU30v0fUii004ilSDMtSadSC00yuG45nOcyyEMn9vLf5vedGVLDR7uL5gK04cCmfoR1h1AxMAwxL/v0u2tTqbhFpLEgvfl65ickx05iGoSPdb4ZqwYu3ap/z5TLhnqZrbiGRZ1FpyKnalIoZXeVtVn/A802AWGZabYl8BN6ZMEiu/gSXZEuDrje1dReF/3RWUBueOFwqhQ6RAzvM26O2bPLHwl3zA5zq4fdGpQH/aDlyl1CHzDIP7r74VIFprF5BkgF2OrPbudRgwxdkBx0XiulA7MEJD5dfCgDSaSnQ8x5SvRa9hM/Zd7Uh0gobhjWTZ2N5vri25WtbGA0YARbmo1RaltXIhmjjr+5xB9VUU3amTh85ch7mSmuQcfsnJt1/SPkhvC5MCAuXBIzKk03jqZXKJHby1w9b2TRXM72ctdub+Dr7Qs/yXLat1JYK7FwoJDh8m9UderBnWummLQ6DB8oiKEkvHm06SqH2/RIIFlPoWuURUonsxoKV3Ien4or5MptOZeiq1klycXg2gpBbUX6u77hoS6Z1v7UouNAHqlAlTnUzq4fACeGHbEVRRuRmvewzCFw8X7AWN7mkHKwemcI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(39860400002)(136003)(396003)(451199015)(66556008)(6506007)(5660300002)(41300700001)(316002)(36756003)(8936002)(6512007)(44832011)(186003)(4326008)(66476007)(2616005)(2906002)(8676002)(26005)(66946007)(31686004)(478600001)(6486002)(31696002)(86362001)(83380400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dE90VFdPZzNyMW8yTGJzeEQyWHJMa1RCbW92Sy9Nd0h3cUxPUmxmWlYwQ3M2?=
 =?utf-8?B?Q3QxRGJ5ZkcxOGdpQ3RheUNYY29kTkZSUFEvaE9YTXBmNzRlKy9QakNxdTFt?=
 =?utf-8?B?QWdsR01oUWZZa0g4RjYxc29GSUhHVSs5VzJhUWFvYTNuMi9HSGY4Q3Ryc2JN?=
 =?utf-8?B?RVBnVVpnQnIyL0E3cHk3cVBmMklvdW9WSDRqUkhuTUNzN2ZhbzFxR01kTlpa?=
 =?utf-8?B?WjJZYytxbktRNUZVbnZWL0RKQ2FQcWNwVWZoN3h5bXNRY1dFWVNxSkdXSXFa?=
 =?utf-8?B?RHFyakErT1FUbkpVV2xZWGc5ZkpzWUNRTllTeHUxdEdVNnk1TDd3VDlXK1N1?=
 =?utf-8?B?SndIZDNiaTdwNUZTbG1MM0c2VGNHdVo5TVZBTmhEUzhEbDVRNlBuZ0FMWjY2?=
 =?utf-8?B?NnMxYkJkbnJMbTJRVUZKdTFkQWdaRDRXNnV6SENVSFA2QUs5cXlTWDJIdEph?=
 =?utf-8?B?NktkZDZMelkvTEFVRGdXUUZ1eTRZc2hCeVR1Tk1vNVhtb1hnTGxWN1FxN3dB?=
 =?utf-8?B?OXpTSm5OSFZlSStQMll5UmJWUXY2c0ZmVTdRaU1Yd0I2am91UVpRckcwWmo1?=
 =?utf-8?B?djFxTHZVWEo3WW1VUmZuSVlRdUdNdHBrNzFnTG9BYjZHaHpEeW51TEJxVjVP?=
 =?utf-8?B?eFhOaFlYWXdSa3pWbnBleHU1c1ltUW0wNCt5MXdyNXBlYjJoU0lxc1hXTnc1?=
 =?utf-8?B?blF3cmRLY2FOQ1F0bTdidnNyOXJOSEV1S2ZBY1Q1dkpHMWd2TGU1WXNBc1Iv?=
 =?utf-8?B?NGFvRE02cU5QTkUzQWhBTWFEVUpKd0Y4anVmSDUxekxReFIrUlBmdXQ0QnV4?=
 =?utf-8?B?Rmo2MGJSNkRSSW9kRjB4Y3FkWUZvdUthYWs4MngzWnhWSVIra2w5dFVHWm0r?=
 =?utf-8?B?LzhBc0xTRW9lRVl0MDROOVNLSFRYejBKdjNCUWFTNWQycGNKM0E3L3hGTjRD?=
 =?utf-8?B?eEJZN0RoWHJUQ3FXWmJzeC8rRTBSUUVwOHJnb20yNlM4WjkrNlhJQWZFRjBP?=
 =?utf-8?B?UnNwRHduY2U2OWszQ1dqVWpyRjZ6Mzg4NE0weTBScUo5a2RYTDhZc2tMUFBl?=
 =?utf-8?B?T2Y3dXd1OEFsZmJLRnB2ZVd2VGcxRGxuMm1Ici9tSkVDUlQwUEh3TmRuczhq?=
 =?utf-8?B?bW01N0xFMjlyNnhlUzRRcmhTQWR4YVk5RVRmSVJ4MnFOOUJIKzRXRW50WXNu?=
 =?utf-8?B?UUlxcEVMYkxFdk9EQkhSRFZIVk1pbzZDM3VUekNsL3kzU2F5UE5NNzh3Y01Z?=
 =?utf-8?B?MDZIUVFUbDV3TTJpbE9IeTcyVHdqMXVnZ21hUFhRbW55UUVrcjJzN1NRYkJJ?=
 =?utf-8?B?Y2g3Wkk4cHRRTnYxdll5MmR4NnJiaVU3MWFSVzJYRHBTUllyS08zQm4yWG82?=
 =?utf-8?B?cjhIWGhxVjJFV3MxYkRwM3BTa2hWMHNRMDBab0NQeUpEY2I0RzFqd1pBejV2?=
 =?utf-8?B?Zm5BWmxjQjljM2dPR2M5OVl3M2FEZVNRVG5kbVZUWnR3L2Iya0J6Z3NFRkcz?=
 =?utf-8?B?WkxGc1UxNW8rVFN2VHZNd1gwYUNEejJoRDE2S0s0S0ZuK2hvbVJPM3pxb1o1?=
 =?utf-8?B?WGQzeDR6VXhkaUhSTXNHTUMwaHZKVXcyYWJoVmorNTE4Vmx3T1lOMUhQa0Q3?=
 =?utf-8?B?UFdlM3M2emFiaXlyRkNtYUZFTFpWN1dJdjBITHE5emVYbkFpQVNvTnlONzRo?=
 =?utf-8?B?cE1COTNqU25GMnkzY3JtNjZ2S1hiRytiZ2lIYVUvbGI4OGIrc1RaTkw3TytQ?=
 =?utf-8?B?TzhGMnRTRUY4TWM3OVpFRGxDWDZMQ3ozeXVHWTJUNEdWNmJPZkN4QnIxL2x0?=
 =?utf-8?B?d1JaVzg2NkFOcDdPL2djU01EbS9iTlN3R24rcjF5aVZ6bnA1YnN4MUlyemVW?=
 =?utf-8?B?Y1c0a3d5UkI2dmlhVFlpSzhwR25KL2NnL2oxVVBjNnRqSEN5dWZvV1gzV1Z2?=
 =?utf-8?B?czRMUmxSNXZQUHo5VEdlWjhnNFFKZ1pCaWdSTUY4RHJLQkZ6NkpHZHZrMFRJ?=
 =?utf-8?B?UGZwQVFXcXlNS1luM0RiaVNVOFc3WDh1eXJjSVRzWVJpVERNTWFJTUZkVnBJ?=
 =?utf-8?B?d1hkZXI2alVkemRjMFFNMjlTczRlUHRQWlhWVm1PTkdibWpZdlg2WXZXS2RU?=
 =?utf-8?B?LzRubGdCK3BOVWFkeTgvYzVZQkVXV1B2NU9JYXRPOTNRbmdVNjBEaDFUUEt3?=
 =?utf-8?B?b0E9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cec9998e-07a0-40e0-c201-08dab85f8bea
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 21:09:33.7676 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JujtU86cPyBXNihZb1oSZAn3cNo3kuPQF+Ja+O/xF/mkeQV84qLXyvu1WY44qoqrDERBxnJL76mHTuCodPUDMWojgSIQaUujfqGRW3efLaI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5094
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-27_07,2022-10-27_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0
 mlxlogscore=999 malwarescore=0 suspectscore=0 phishscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2210270119
X-Proofpoint-ORIG-GUID: bhJSmupVUTQ2qgQ5wQSEYAfeBIkV84AJ
X-Proofpoint-GUID: bhJSmupVUTQ2qgQ5wQSEYAfeBIkV84AJ
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/20/22 2:44AM, Zhang Qilong via Jfs-discussion wrote:
 > We should not access sbi which obtained form previous > context of LAZY_LOCK,
 it may have been freed because > of cleanup_mnt/umount. If we [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ooA8S-0001jo-Dz
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: Fix use-after-free in
 jfs_lazycommit()
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: jfs-discussion@lists.sourceforge.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/20/22 2:44AM, Zhang Qilong via Jfs-discussion wrote:
> We should not access sbi which obtained form previous
> context of LAZY_LOCK, it may have been freed because
> of cleanup_mnt/umount. If we get LAZY_LOCK again, we
> should re-dereference tblk to get sbi to avoid UAF in
> jfs_lazycommit().

Thanks, but I'm not convinced that this is an improvement. The tblk 
seems even more likely to have been freed by the time we re-acquire 
LAZY_LOCK. I'm going to look at another way to fix this.

Shaggy

> 
> BUG: KASAN: use-after-free in jfs_lazycommit+0x746/0xba0 fs/jfs/jfs_txnmgr.c:2730
> Read of size 4 at addr ffff88807ee78094 by task jfsCommit/120
> 
> CPU: 1 PID: 120 Comm: jfsCommit Not tainted 6.0.0-syzkaller-09423-g493ffd6605b2 #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/22/2022
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:88 [inline]
>   dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106We rightly keep athletes that still suffer the effects of concussions off the field. 
>   print_address_description+0x65/0x4b0 mm/kasan/report.c:317
>   print_report+0x108/0x1f0 mm/kasan/report.c:433
>   kasan_report+0xc3/0xf0 mm/kasan/report.c:495
>   jfs_lazycommit+0x746/0xba0 fs/jfs/jfs_txnmgr.c:2730
>   kthread+0x266/0x300 kernel/kthread.c:376
>   ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306
>   </TASK>
> 
> Allocated by task 4321:
>   kasan_save_stack mm/kasan/common.c:38 [inline]
>   kasan_set_track mm/kasan/common.c:45 [inline]
>   set_alloc_info mm/kasan/common.c:437 [inline]
>   ____kasan_kmalloc+0xcd/0x100 mm/kasan/common.c:516
>   kasan_kmalloc include/linux/kasan.h:234 [inline]
>   kmem_cache_alloc_trace+0x97/0x310 mm/slub.c:3289
>   kmalloc include/linux/slab.h:600 [inline]
>   kzalloc include/linux/slab.h:733 [inline]
>   jfs_fill_super+0xfb/0xc50 fs/jfs/super.c:495
>   mount_bdev+0x26c/0x3a0 fs/super.c:1400
> 
> Freed by task 3642:
>   kasan_save_stack mm/kasan/common.c:38 [inline]
>   kasan_set_track+0x3d/0x60 mm/kasan/common.c:45
>   kasan_set_free_info+0x1f/0x40 mm/kasan/generic.c:370
>   ____kasan_slab_free+0xd8/0x120 mm/kasan/common.c:367
>   kasan_slab_free include/linux/kasan.h:200 [inline]
>   slab_free_hook mm/slub.c:1759 [inline]
>   slab_free_freelist_hook+0x12e/0x1a0 mm/slub.c:1785
>   slab_free mm/slub.c:3539 [inline]
>   kfree+0xda/0x210 mm/slub.c:4567
>   generic_shutdown_super+0x130/0x310 fs/super.c:491
>   kill_block_super+0x79/0xd0 fs/super.c:1427
>   deactivate_locked_super+0xa7/0xf0 fs/super.c:331
>   cleanup_mnt+0x4ce/0x560 fs/namespace.c:1186
>   task_work_run+0x146/0x1c0 kernel/task_work.c:177
> 
> Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
> Reported-by: syzbot+e9ec3b8a36d350400038@syzkaller.appspotmail.com
> Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
> ---
>   fs/jfs/jfs_txnmgr.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
> index ffd4feece078..d8beefadd47a 100644
> --- a/fs/jfs/jfs_txnmgr.c
> +++ b/fs/jfs/jfs_txnmgr.c
> @@ -2727,7 +2727,9 @@ int jfs_lazycommit(void *arg)
>   				txLazyCommit(tblk);
>   				LAZY_LOCK(flags);
>   
> -				sbi->commit_state &= ~IN_LAZYCOMMIT;
> +				sbi = JFS_SBI(tblk->sb); > +				if (sbi)
> +					sbi->commit_state &= ~IN_LAZYCOMMIT;
>   				/*
>   				 * Don't continue in the for loop.  (We can't
>   				 * anyway, it's unsafe!)  We want to go back to


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
