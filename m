Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8FC8A008B
	for <lists+jfs-discussion@lfdr.de>; Wed, 10 Apr 2024 21:25:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rudYn-0000lq-6e;
	Wed, 10 Apr 2024 19:24:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1rudYl-0000lh-1q
 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Apr 2024 19:24:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=27yhbqYm3R7y/sAr63tMLArq09dSljIiqHdplYXEBOk=; b=NroOhyGAUfT0+rc8THoRah7US3
 7ipXCGpuyNhJEKUj2J20+DUBleQLlkb1KqNiN3tvAKb9NQHB26B+v5xZO5AkHfQs9WvGpCGa5ozZY
 58W6rAy1xR64AG08xDDoTstop01QMXEUWiKKEhfcNrfZ7QwyXWtarryAueQIDPISve7w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=27yhbqYm3R7y/sAr63tMLArq09dSljIiqHdplYXEBOk=; b=ApTEqXBXDyUMzM0asrbG3eL+Ax
 FDmJS7QJdx2Scmvlv9VdZEb9dnuLPvrkqqjS1Rgu6kYdLmrUHFXy0jkIVdfEonHKMzDfBBb7dbET/
 FoSe2rov5Zr0hGM3MiF2d7Upa0aju6A1n9RaVy1a3tUCIl8Aafp5KLxSkRYqUUKnSaZs=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rudYk-0002UF-51 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Apr 2024 19:24:39 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 43AJ4IFa026485; Wed, 10 Apr 2024 19:24:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-11-20;
 bh=27yhbqYm3R7y/sAr63tMLArq09dSljIiqHdplYXEBOk=;
 b=C/NpLJAW1iWyZjq0kERXYfhJdltVc7kQLtOFkTIfxTPbYyRERxXyc4ftc1HZ7Jm2x3JH
 l0U4vxMic4344NqvzCxVdzOYwwT4jUg1NnV/xAkjNEdBitXkA2XTZkuQZQozHrrrU5+2
 qRxAyQuw3xDSnKXzyTXXMjm8BlN3ULCY9x3GrUjZvVXBBSFpILhR1XM0HuOlOExiOycy
 F1+a/kgWwccolYiAe3AXkUWJ7qYlWMMURI92ZLK02CDXX20/hWynuBXd6EDnz+zFQ8XQ
 f7pn/JLTB9LsGJx9J24yb5vUOOEObMy95Ef3Lpdy/dq96wzFlWYWL/fuu1HHlrWu6cuh tQ== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3xawacr5gu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Apr 2024 19:24:21 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 43AIBwEv026464; Wed, 10 Apr 2024 19:24:19 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3xdrsrprpy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Apr 2024 19:24:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rm3zNRiCcZqibJT4OsahIu+pE8cTv1GFimoJsOB26pnF/SYUaIO774P/juuQlO02eQ6HfiR6jNFHfLAQdjkw1PNHh+B6LVWN676W+pYhtdO3rvD5VCKwNV9VL4kF2dQbD+LM404wTaPk9pPQ1fbsgeErcnnpPPGv3p6QABKAFQHRPzFpqXvSO/8ZER8CZ+Hd4HY1uR69KpwnjH4/Hv7sSdJ6FRZdDLbHFBPs+zq8x1+0xWvRhtPAvLscgm7xhrpTxiWHUwcuToxD10wF42HA5aJfVF3ZkY1Z3aA3JQ89CyW/bW/1AseeIHTaiyKzEjx5CA4h4BchpKFhhyyHgYmfqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=27yhbqYm3R7y/sAr63tMLArq09dSljIiqHdplYXEBOk=;
 b=RSaSug2Whb7Joo645H3PqaeTdiPVo7dMJOS11nxk1HCYCFrI2F2LWWZ7TrRH+SdW2aqauk36r1/XgIymUUFwjsiwmvxDm3eEoKz/eswfEOHKrUC9YNYJDYmCPfyrLRiRFkneHIeHFBHRVcGauWm/7x6AR6mxEGKyfYe1LdSWindb65xslCLVs5Xgyf+wxmGti8Gcxjl4xewuEPtOuWigAHWh7QaqVmYzpkIMgvaDbNqgZyCoFa6hudHTuA8oflcoNfqUdfIo9PktLc7CwATsCrmay2x09rEAz9ACo/Zr12AYuxi0gXlUlrUtyhp2TLzbYJpbZK3eyw/FAHs79OxzxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=27yhbqYm3R7y/sAr63tMLArq09dSljIiqHdplYXEBOk=;
 b=qvb3j6nU/hVOJBPR5kE8j3FKmnoDhi1Pk9XE/y4i6WfRvRJnieiAKewR+JRmXbQZLlqzsOJ63xwWvsA5y6bKxGiyM9EQTibnTEMxH2BbtZi2DJCh7QljDyoSwZrThpE1m0NOlbuHeUoF7Yz0C5Yj6IUOsoGMhawxyJND+YoZJ6I=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA1PR10MB6244.namprd10.prod.outlook.com (2603:10b6:208:3a0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Wed, 10 Apr
 2024 19:24:16 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::1bae:2a6c:1de2:3856]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::1bae:2a6c:1de2:3856%6]) with mapi id 15.20.7409.042; Wed, 10 Apr 2024
 19:24:16 +0000
Message-ID: <8c7b1d37-758a-46b2-b8aa-afd333140bf4@oracle.com>
Date: Wed, 10 Apr 2024 14:24:13 -0500
User-Agent: Mozilla Thunderbird
To: Divyaank Tiwari <dtiwari@cs.stonybrook.edu>, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 brauner@kernel.org, jack@suse.cz, axboe@kernel.dk,
 jinpu.wang@ionos.com, dchinner@redhat.com, lizhi.xu@windriver.com,
 johannes.thumshirn@wdc.com
References: <20240410184857.42754-1-dtiwari@cs.stonybrook.edu>
Content-Language: en-US
In-Reply-To: <20240410184857.42754-1-dtiwari@cs.stonybrook.edu>
X-ClientProxiedBy: CH5PR03CA0012.namprd03.prod.outlook.com
 (2603:10b6:610:1f1::9) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA1PR10MB6244:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /ZjWid02l4+MRomyqnUPY+rGsLP032f8GFMv2ruubG9t7lXa4YQUlr4AzGWARHqPzwT3ueoZFF05Z/Yez2AcCLpnTIFD48l141gZfSlSJpA290RcmQqsLKzypyVmzChPRLc3I3iC32vfReMIXSwb4cCjGzG+1BElI/cjx9Kapm1URaHzp2D/ybPJ9ABp3JRboqcNzllk6HqHj++OkHu5HcYQ7OSy0TXrnDrVWu6AefsLvJmdCcMyzQ9aDTu65iJXooqgcxrz1rsJ8le4/51iBgXvhm6JuCnjTr3T5yoaXQw7+D/dun7SwCnah1y/VJ+NITRrscBqbgzJlVNogPKRbGumOEAbCASc6GaVK2PgyQ/BPBoLYDDGf7QKnWYI9fGRlvlJFVbPB7wrDvCqdn4c5Rr/WjapnIizp4GdAdtpZLbWB8Kwkt2lPShpLiZ2bF9Aj9PcODgvSi+F6vSWQPR7jvmrw4cBtbGMWUJiU30MvkQFoCTPkHlPQX1Ot3Ei5d1DAqYTCB6y35FgqdWgat67K0v2cdadquH/jJby/oSNzXsPRoKPYvtuRI1Mq5ScrK7vo1ZGe8hpcM8JWs55CZsmcL2C7gg1pidKqmYGHu2mSB98Zf5lA+TS2uYqFXBoaeBtEPKy7Onz9bUr33alIQBX/L47LJPIG1vjLGsRaKJVbWuCdemh2uNAdbg8WiOD9++GX5URYl7zgocZX0NzBnhZkA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(7416005)(376005)(921011); DIR:OUT; SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bS85eVVrMjY5ZGJ0V3RFRnhaczdJd0xQWEk0ZjRsdVZVVnF2V3BGdUN5QmFt?=
 =?utf-8?B?TVJKWVZBRm9QckVpampSbGpsaDA0U25WWlFHRFNFdmdhR0E1K0lpNlNpQTlt?=
 =?utf-8?B?QTkyeC95NlI5bkFSRWRYVU5pclBWRHNDQUlKY09aaHlMMEVsU1FQaDJXYnZi?=
 =?utf-8?B?SnJ6MEc1THVyWWYwUEhJS0Q3a1oyZjFhekd6OXcvWVU2algxS20vSjJkbVRo?=
 =?utf-8?B?ZXFxRXJxMlpaeW95NXNnaHhrVmZYekJDY1R5K1lxL3ZXdENCS1Rhb0lnVHA4?=
 =?utf-8?B?TTVTZWJKMFR0aU9XZFVlK3lDRWpGOVFNbVlaMWI2WFRpNnFrK21jTVJ6QlQ5?=
 =?utf-8?B?Zk9BUWR3OWlQdjJJbm9weWU3VDdxblovN3lMRHVhWEFlcU1TMXgzdytvRlJ3?=
 =?utf-8?B?bGxHRnBDOEpGbzZXYU1lakV2QmJNYkZBV2JHdWk4OWQ0dUJZS0RCb3NPa2s5?=
 =?utf-8?B?VFBSL054UFo0TCtDaHgyRjV4NnpYaUltQVhJYUtNK01weW5TZmdmMGNCU1p6?=
 =?utf-8?B?dTUwc21VNkNuVWRnNnhodWMzOEdxcnJ3Qlc4dE1MTEdBVTdwWVp5SXBveS9F?=
 =?utf-8?B?RmJNc2VpTkc3WmUvSFV6czkwQ0ltMXkxWVBxM3J5VEZGZ0p2QmhHM3JsZ0Nl?=
 =?utf-8?B?bENTNjJUOVVzSWx3L3kveUZzY0o2L0V0VzJmd3NiRmkwM3pVR0R5UUdMbXVl?=
 =?utf-8?B?WHR1MWxSQUZGTnh6WHk3M0lkKzRpVXRhM1Z4dHdnSWVFZUlvdUZheTVRN3BL?=
 =?utf-8?B?SGJuOVZubk9keC9udHdjQ2VwV3JzNGRTbXpFRU1xaTNoblprdG1sM29VUWFr?=
 =?utf-8?B?RDZaYVJQa00yT1ZKaUd0aGd0WnBlczliVy9iSUEybG9RWnZsZUNGT3FJZTl6?=
 =?utf-8?B?QUJIRllCWEsyVW5MYTRVaWVhRThaVnY0Vnk1TUdhMEh0RkkybXdmazRQMkRy?=
 =?utf-8?B?Und5em5LVFh3Ym05Wlk0b05WalVFN0p0WFJCcXBhcjN4QjU0M29iNlptMVpV?=
 =?utf-8?B?ZVdMc1RIbSswTXRaZ0NyaU9DU2pPOGxXWHJ4bktLNHcxdEVzaWRHVWc5VXlO?=
 =?utf-8?B?dFJJZVF1OXlacmM4VklKeUZ3aFhWTlB5M0lYZmJDSGhLY2tDSjRQcTJ0aUxK?=
 =?utf-8?B?TllOdmNqSDZybnJ4U0t5SnBmZHRZVzdlTkdWSXp2aXpCNHNBaVFXbVgxckky?=
 =?utf-8?B?UTVaeE92S2JsQitlcXVHS2RGL0ZMcng5M3J5eTRURnZZMWhnRzZ5UUhxUDh6?=
 =?utf-8?B?eTBQaTlhMUgrOTJKTStrN3BLNzJoTWMrV2ZtWmx0bFdvRnMrL25mRFU3d3Zz?=
 =?utf-8?B?cURQWnBTcEprc0NRd0daVFN0ajJGejNCUDMrQnRQbHJsRWZEMVp1VDExNndl?=
 =?utf-8?B?UFpxYmptaTFpWkg0VGlwNDBHWnBSeWYwT0JNWHZFbkI0YThLd0ZjamUvS0xH?=
 =?utf-8?B?S0RBRmwyTUNCVGFFdkdtdGRwUXMxTjk1THlmSDJ4blMrd05YR1NxTkV5N0Jt?=
 =?utf-8?B?bDdKZUdJVDYvTGRUVDZ6ZkRjSEVZWTVBWXZ0T0pwUlNRa3dmaDNndVUvN3Fz?=
 =?utf-8?B?cEt3K0wzclVRV2xyS1paR3Z0TXJhNitjMktQL3FxTW5UK3F3SEp2bTFxRlFm?=
 =?utf-8?B?UncrMUNmc2lFYVJhRFZuMmo0WmFXRnNBMkluY2JqaTdmUWRabWlOUitsMmJj?=
 =?utf-8?B?eEMyRXBwVXhwdmpZRnBUVCtzL1VFdlN6M0xzQThxbnFuWDJuNFRBL2crUTRI?=
 =?utf-8?B?NTFHR2ZEKy9BWWY2RVVJdHhHV2kzVDJEd0h6RzRQcTZTeUoyVDdTWkhldVd5?=
 =?utf-8?B?d3FFKzVkUHJkNHNHdkpaK2RIWkhmNXB6d0NiM09JVGF4ZHpveTNPL0x4NTg1?=
 =?utf-8?B?OU8zNWdxb2RYVm0zOFF6aGYrMTZtUzFaeGNUWHhtcFo0SC8yKzFJZEYzS0Z2?=
 =?utf-8?B?QUxxVm1ra0xLaXovL0pOdDZMZHFTVEpsVDR3QnVJUUUxemlkZVpaQmMwV2pC?=
 =?utf-8?B?Y3VNODdEaWtzOVpML1VHSE1Dd0lJaUpwYmM2SDJmSGVoWVpzd0tGTGJseFht?=
 =?utf-8?B?WVJKWmhRU2N4ajNCRHE5QldyRHk4UEVxZ0lNbEJPZFo3anlFR1UrUnpqN0VD?=
 =?utf-8?B?UEVOYVB6MGV6UkRXbUNlS0haVHdXWDdLQ3ZuaUx6NEdFSmlJNitpOUZNQ1c5?=
 =?utf-8?B?bnc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: t9FWf55MbA43TKDvigRH3icPTneFfE0mQCT3T76vJZgtsBuFxG2XaYEsj1wpDaBtEiIK4x2evg93JWg/sqLl/MMP3z56TzeLnCq+DUmTLxoprOlK7+EMhhRjyykaA3Nvo7tpq7z/8E963Sukk4yirK7E3gB1PgAcmfoiFl6jtBTyG9WliLe0uanbOHImZQFqfMC30qMJ68qyCKE4qLpeDEhw5WfDuTrWP5CpO9gOlJdqBb977OZGOcmfytmji99hR7q7GqmktX7A/NPQ53+zGSVhGnh+tuiFjh3IryDGg4IAVgS08S74eVGCjTEx4W9GzDCOXODm/v8rngEkmevDdtnBubCqM12Ipzqnij+i3YyhFUJEwoJ1wji/BF7gEj/zI/VKO9T+Ar7jokTvN3dUEdl2D4RpHo/f3Z9DRN0bQ9vlQQxMzgNi1sfDmZ4NYtoc5wk4rTGOvfRiBwY0NCNAKcArQxelQUeCEuh++Dbqy955QXlo1Ix3nWkgz8NUKN2BL3GikzsFnksozIrHO/gx4LX1LkHDDJoUZt4FrHpwjXDtWNKICttcE8mW0oUTN+ep295htVTD+nezWwaNszAIhVlgHUlTig768KWHSRLvDp8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be2917f9-0d97-4676-c462-08dc5993cfe1
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 19:24:16.3700 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s+tiTF1uX2rnJihwZAFn1jorlav7DyPDhfFckc0Mn+Ta8zXlThT2Ad2AMGRdKDRE34C3VsBR0D7wDGBpHsXKTg9BevIaeOzzfruRdcIPhPY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6244
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-10_04,2024-04-09_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 adultscore=0
 phishscore=0 spamscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2404010000
 definitions=main-2404100142
X-Proofpoint-GUID: x1_ddx8G05bttP1Ujz844jAWCPmORajz
X-Proofpoint-ORIG-GUID: x1_ddx8G05bttP1Ujz844jAWCPmORajz
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 4/10/24 1:48PM, Divyaank Tiwari wrote: > In the jfs_logmgr.c
    file, within lmLogOpen() under the “free” label, > mutex_unlock(&jfs_log_mutex)
    is called before kfree(log). Through our > model-che [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [205.220.165.32 listed in list.dnswl.org]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [205.220.165.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rudYk-0002UF-51
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: fix order of kfree() and
 mutex_unlock() within lmLogOpen() in jfs_logmgr.c
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
From: Dave Kleikamp via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: Yifei Liu <yifeliu@cs.stonybrook.edu>, Erez Zadok <ezk@cs.stonybrook.edu>,
 Scott Smolka <sas@cs.stonybrook.edu>, Geoff Kuenning <geoff@cs.hmc.edu>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNC8xMC8yNCAxOjQ4UE0sIERpdnlhYW5rIFRpd2FyaSB3cm90ZToKPiBJbiB0aGUgamZzX2xv
Z21nci5jIGZpbGUsIHdpdGhpbiBsbUxvZ09wZW4oKSB1bmRlciB0aGUg4oCcZnJlZeKAnSBsYWJl
bCwKPiBtdXRleF91bmxvY2soJmpmc19sb2dfbXV0ZXgpIGlzIGNhbGxlZCBiZWZvcmUga2ZyZWUo
bG9nKS4gVGhyb3VnaCBvdXIKPiBtb2RlbC1jaGVja2luZyB0b29sIE1ldGlzLCB3ZSBmb3VuZCB0
aGF0IHRoaXMgaXMgb25lIG9mIHRoZSBwb3RlbnRpYWwKPiBjYXVzZXMgZm9yIG5vbmRldGVybWlu
aXN0aWMga2VybmVsLWhhbmcgYnVncyBpbiBKRlMuIFNwZWNpZmljYWxseSwgdGhpcwo+IGluZGly
ZWN0bHkgcmVzdWx0cyBpbiB0aGUg4oCcbG9n4oCdIHZhcmlhYmxlIGJlaW5nIE5VTEwgZGVyZWZl
cmVuY2VkIGluIHRoZQo+IGZ1bmN0aW9uIHR4RW5kKCkgaW4gamZzX3R4bm1nci5jLgo+IAo+IEZp
eDogU3dhcCB0aGUgb3JkZXIgb2YgbXV0ZXhfdW5sb2NrKCZqZnNfbG9nX211dGV4KSBhbmQga2Zy
ZWUobG9nKS4KPiAKPiBXZSBjaGVja2VkIHRoZSBlbnRpcmUgSkZTIGNvZGViYXNlLCBlc3BlY2lh
bGx5IHRoZSBmaWxlIGpmc19sb2dtZ3IuYyB3aGVyZQo+IGxvZyBpcyBhbGxvY2F0ZWQgYW5kIGtm
cmVl4oCZZCBtdWx0aXBsZSB0aW1lcywgYW5kIGZvdW5kIHRoYXQgZXZlcnkgdGltZSwKPiBleGNl
cHQgdGhpcyBidWdneSBjYXNlLCBhIGNhbGwgdG8ga2ZyZWUoKSB3YXMgZm9sbG93ZWQgYnkgYSBt
dXRleF91bmxvY2soKS4KPiBUaGlzIGVuc3VyZXMgdGhhdCBhbnkgc2hhcmVkIGxvZyByZXNvdXJj
ZXMgYXJlIHByb3RlY3RlZCBieSB0aGUKPiBqZnNfbG9nX211dGV4IGxvY2suCj4gCj4gVGhlIHNt
YWxsIHBhdGNoIGdpdmVuIGJlbG93IGZpeGVzIHRoaXMgYnVnIGFuZCB3ZSBhcmUgcmVhc29uYWJs
eSBjZXJ0YWluCj4gdGhhdCBpdCBpcyB0aGUgY29ycmVjdCBmaXguICBCZWZvcmUgdGhpcyBmaXgs
IHdlIHdlcmUgYWJsZSB0byB0cmlnZ2VyIHRoZQo+IGtlcm5lbCBoYW5nIGJ1ZyBmYWlybHkgcXVp
Y2tseSB0aHJvdWdoIE1ldGlzLiBUaHJvdWdoIG11bHRpcGxlIGV4cGVyaW1lbnRzLAo+IHdlIGZv
dW5kIHRoYXQgd2Ugd2VyZSBhYmxlIHRvIGNhdXNlIHRoZSBrZXJuZWwgdG8gaGFuZyBtb3N0bHkg
d2l0aGluIGEgZmV3Cj4gbWludXRlcyBvZiBleGVjdXRpb24uIFdoaWxlIHdlIGFyZSBmYWlybHkg
Y2VydGFpbiB0aGF0IHRoZSBwYXRjaCBiZWxvdwo+IGZpeGVzICphKiBidWcsIHdlIGJlbGlldmUg
dGhlcmXigJlzIGFub3RoZXIgcmFjZS9idWcgc29tZXdoZXJlIGVsc2UgdGhhdCB3ZQo+IGhhdmUg
eWV0IHRvIGlkZW50aWZ5LiAgV2l0aCB0aGlzIHNtYWxsIGZpeCwgd2hlbiB3ZSBydW4gTWV0aXMs
IHdlIGNhbiBzdGlsbAo+IHRyaWdnZXIgYSBOVUxMIHB0ciBkZXJlZiBvZiDigJxsb2figJ0gaW4g
ZnVuY3Rpb24gdHhFbmQoKSBpbiBqZnNfdHhubWdyLmMsCj4gYnV0IG5vdyBpdCB0YWtlcyBhbnl3
aGVyZSBmcm9tIDYgdG8gMTM3IGhvdXJzIChhbG1vc3QgNiBkYXlzKS4gV2UgYXJlCj4gaG9waW5n
IHRoYXQgdGhpcyBmaXggd2lsbCBhbHNvIGhlbHAgc29tZSBvZiB0aGUgSkZTIG1haW50YWluZXJz
IGlkZW50aWZ5Cj4gb3RoZXIgcG90ZW50aWFsIHJhY2VzLgoKSSdtIHJlYWxseSBub3Qgc3VyZSBo
b3cgdGhpcyBmaXhlcyBhbnl0aGluZy4gV2hlbiB0aGUgbG9jayBpcyByZWxlYXNlZCwgCm5vdGhp
bmcgc2hvdWxkIGJlIHJlZmVyZW5jaW5nIHRoZSBkYXRhIHN0cnVjdHVyZS4gQWxzbywgY2FsbGlu
ZyBrZnJlZSgpIApkb2Vzbid0IGhhdmUgYW55dGhpbmcgdG8gZG8gd2l0aCB0aGUgdmFsdWUgb2Yg
c2JpLT5sb2csIHdoaWNoIHdvdWxkIGJlIAp0aGUgY2F1c2Ugb2YgdGhlIE5VTEwgZGVyZWZlcmVu
Y2UuIEl0IG1heSBvbmx5IGFmZmVjdCB0aGUgdGltaW5nIGJ5IApob2xkaW5nIHRoZSBsb2NrIGEg
bGl0dGxlIGxvbmdlci4KCkNhbiB5b3UgYnJpZWZseSBleHBsYWluIHRoZSB0ZXN0IGNhc2U/IEl0
IHNlZW1zIHlvdSBhcmUgdXNpbmcgYW4gCmV4dGVybmFsIGpvdXJuYWwuIChJIGRvbid0IHRoaW5r
IHRoYXQncyB2ZXJ5IGNvbW1vbiwgd2hpY2ggY291bGQgaGVscCAKZXhwbGFpbiB3aHkgaXQgaGFz
bid0IGJlZW4gZGlzY292ZXJlZC4pIEFyZSBtb3JlIHRoYW4gb25lIGZpbGUgc3lzdGVtIApzaGFy
aW5nIGEgam91cm5hbD8gKEkgZG9uJ3Qga25vdyBpZiBhbnlvbmUgYWN0dWFsbHkgZG9lcyB0aGF0
LCBidXQgdGhpcyAKd2FzIGRlc2lnbmVkIGluIGZyb20gdGhlIGJlZ2lubmluZy4pCgpUaGF0IHNh
aWQsIHRoZSBwYXRjaCBsb29rcyBjb21wbGV0ZWx5IHNhZmUuIEknbSBub3Qgc3VyZSBpZiBpdCBp
cyAKbmVjZXNzYXJ5IHNpbmNlIG5vdGhpbmcgc2hvdWxkIGJlIHJlZmVyZW5jaW5nIGxvZyBhbnkg
bW9yZSBhbmQgYSAKdXNlLWFmdGVyLWZyZWUgaXMganVzdCBhcyBsaWtlbHkgd2hldGhlciBvciBu
b3Qgd2UgaG9sZCB0aGUgbG9jayB3aGlsZSAKY2FsbGluZyBrZnJlZSgpLgoKVGhhbmtzLApTaGFn
Z3kKCj4gCj4gTm90ZTogQWxsIG9mIG91ciBleHBlcmltZW50cyB3ZXJlIHBlcmZvcm1lZCBvbiBM
aW51eCBrZXJuZWwgdjYuNi4xLgo+IAo+IFNpZ25lZC1vZmYtYnk6IERpdnlhYW5rIFRpd2FyaSA8
ZHRpd2FyaUBjcy5zdG9ueWJyb29rLmVkdT4KPiBTaWduZWQtb2ZmLWJ5OiBZaWZlaSBMaXUgPHlp
ZmVsaXVAY3Muc3Rvbnlicm9vay5lZHU+Cj4gU2lnbmVkLW9mZi1ieTogRXJleiBaYWRvayA8ZXpr
QGNzLnN0b255YnJvb2suZWR1Pgo+IFNpZ25lZC1vZmYtYnk6IFNjb3R0IFNtb2xrYSA8c2FzQGNz
LnN0b255YnJvb2suZWR1Pgo+IFNpZ25lZC1vZmYtYnk6IEdlb2ZmIEt1ZW5uaW5nIDxnZW9mZkBj
cy5obWMuZWR1Pgo+IC0tLQo+ICAgZnMvamZzL2pmc19sb2dtZ3IuYyB8IDIgKy0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9mcy9qZnMvamZzX2xvZ21nci5jIGIvZnMvamZzL2pmc19sb2dtZ3IuYwo+IGluZGV4IDk2MDkz
NDllOTJlNS4uY2U5YWY0ZWYxZTQxIDEwMDY0NAo+IC0tLSBhL2ZzL2pmcy9qZnNfbG9nbWdyLmMK
PiArKysgYi9mcy9qZnMvamZzX2xvZ21nci5jCj4gQEAgLTExNDQsOCArMTE0NCw4IEBAIGludCBs
bUxvZ09wZW4oc3RydWN0IHN1cGVyX2Jsb2NrICpzYikKPiAgIAliZGV2X2ZwdXQoYmRldl9maWxl
KTsKPiAgIAo+ICAgICAgICAgZnJlZToJCS8qIGZyZWUgbG9nIGRlc2NyaXB0b3IgKi8KPiAtCW11
dGV4X3VubG9jaygmamZzX2xvZ19tdXRleCk7Cj4gICAJa2ZyZWUobG9nKTsKPiArCW11dGV4X3Vu
bG9jaygmamZzX2xvZ19tdXRleCk7Cj4gICAKPiAgIAlqZnNfd2FybigibG1Mb2dPcGVuOiBleGl0
KCVkKSIsIHJjKTsKPiAgIAlyZXR1cm4gcmM7Cj4gCj4gYmFzZS1jb21taXQ6IDJjNzFmZGYwMmE5
NWIzZGQ0MjViNDJmMjhmZDQ3ZmIyYjFkMjI3MDIKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
