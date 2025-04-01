Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAB0A7829E
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Apr 2025 21:11:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tzh0b-00068d-2O;
	Tue, 01 Apr 2025 19:10:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1tzh0Z-00068O-8m
 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:10:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RAqu8N7nytZIofBQfmDcGKOGX6ZiAhSdd140fcHaw5Q=; b=J7z/USdVg55NLw3BruKOloKtt9
 zgqzoabnX+I4QaiIQ+uYUvr4LBGKy6o7ZmHVgiIpVhWXTn4GPWeVk6a/96+V+9hKILCSRDFCXRpOp
 PqZAJBtkPcC4naBBDsLVuQY5BsievvDaitfeXfbTiRz724f94j2+zB26sb0os6i6Aczk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RAqu8N7nytZIofBQfmDcGKOGX6ZiAhSdd140fcHaw5Q=; b=Cj4cqITWLYep5CVNimLyM8dX4s
 zdZFQRRd2E4SNSgyRAaiWxQitokx7QDNUZsnIikJPKmmtXGdjHA8Pk6IHtvTT4fMq8QWgR/5kDzZo
 WYKgZpbNHhTBopP8RSMcmLX3CIYDqM9mBGAZpGgbzemJ934aHErgDpyWgZgKn9GZwuTo=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tzh0K-0005bk-08 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:10:47 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531IK97q004329;
 Tue, 1 Apr 2025 19:10:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=RAqu8N7nytZIofBQfmDcGKOGX6ZiAhSdd140fcHaw5Q=; b=
 dZH1mDQqQsCX7fqIDF9c1qkLvUkeTYAZP/qy+EOyLPsjzYmvKUtl396vNvH6R2CI
 16SzB+BvP3EgXCgzS58mKFZOaN2KPx+Fl65K9env+lyKLZNOjSU7x69AFegEqhsn
 X21vwJ5owrEi9voKYQ0fHPRv39oYkJ2jpLoYEqV5Q/OjUQlL0uIQJQTvEaOUF1a0
 clO62SoTCX+/KkEk+1CmluLv+TfA7YvfM1XIA6L6drWv590zYdevXMAu/JGhlvjl
 4DfK+CoAASnYhf/2SautWFQqtckX60+7ZnzgtEaxhxGLs94vRhZ0V1VBQssgERfE
 ShpyHqQWpfOiFQ8p4ydZlQ==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 45p8fs98tn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Apr 2025 19:10:19 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 531IisIC002637; Tue, 1 Apr 2025 19:10:19 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2042.outbound.protection.outlook.com [104.47.55.42])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 45pr8qsguf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Apr 2025 19:10:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MM470FZHrupucyzOGCqn6r5zOfElfCzCrgcQXqwO/krblmDn64SZyKfv3VjA2UPr7Y14BAQDGmbpdq+7t0Q2cHXaUv+SOYAgcQzri16SHmyEFHlDMzzdjXDu+Y0QNOVdIq/jt6/Vhv2e70L/+bG3dRUk9OezuR9gRbooC6amG0S82NtpmJkYIMhXrDOpPGr927+OEgofbwOmxbQbtCquKNwtndaft7CrqxePSMhcr7QaK55+gS7R6t/Utqv5I4Mz6FGJ19vid6alwUe3USQqRAdmm6cdMQwndm93P5nCvdOO2Mq6z4vC4bnFduBAslAoaDDlbwNk69+GjbLwtGO3MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RAqu8N7nytZIofBQfmDcGKOGX6ZiAhSdd140fcHaw5Q=;
 b=FNtYaegfHOdoRCRsE8NfWspURyx4JSKVFO+RFryGCKOhHfw+h5paRv2r5dq+uds93pKA+sQdpcH+ltPXE0d5Rx/63nE4DZklAUVKQ+7Ls8tWhN3Hqnvured+tXEraXof3amkkW06SuV0gS2gFE0pgvKvsGh90r2A7FSTDqNceBX3o+hlWSH9CfrIAOQY4AWcqVH9aVqm4LANFp6UnDqoWpKiEwKxoG67emJHkx2aMBHaobs8a8YLiS9zwBSCmyP7pB/kFnV8PKDbPglBpKhRMhxIWRRHUrZcEmwwkGcb3qPkR1GQReiIRRxkoFJtHx1/Ar+PNob0Bl8fMLP4nw7jAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RAqu8N7nytZIofBQfmDcGKOGX6ZiAhSdd140fcHaw5Q=;
 b=CmIsTWhcySY4W/SamD0tWhCqCVaH9ywCteSNuBuuJr8d+bHmkmsT+yLiKoR2oV8t+UaSY/eUfeS+DESoyM+LKz4pIMPqWr0tAUlFsfdmyC75vH7RTwXGZTQUUapO3nseaQYfryMMbJ0iST5TDqeJZrTA2IfLv2Kp1bu6jaTUApQ=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by BN0PR10MB4885.namprd10.prod.outlook.com (2603:10b6:408:126::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.39; Tue, 1 Apr
 2025 19:10:16 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%6]) with mapi id 15.20.8583.033; Tue, 1 Apr 2025
 19:10:16 +0000
Message-ID: <1f54efc6-045b-475f-a1f1-918377af8960@oracle.com>
Date: Tue, 1 Apr 2025 14:10:14 -0500
User-Agent: Mozilla Thunderbird
To: Suchit K <suchitkarunakaran@gmail.com>
References: <20250302191558.47180-1-suchitkarunakaran@gmail.com>
 <e495bf9c-9fba-44ce-99fe-04879f8dd0c2@oracle.com>
 <CAO9wTFgMCsS9L1PwpkDr48t9R4hO2UvFRwbPu2mMQMP0aqD+cQ@mail.gmail.com>
Content-Language: en-US
In-Reply-To: <CAO9wTFgMCsS9L1PwpkDr48t9R4hO2UvFRwbPu2mMQMP0aqD+cQ@mail.gmail.com>
X-ClientProxiedBy: CH2PR16CA0027.namprd16.prod.outlook.com
 (2603:10b6:610:50::37) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|BN0PR10MB4885:EE_
X-MS-Office365-Filtering-Correlation-Id: e5349b59-015f-4b35-bc64-08dd7150d638
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cmtBS1pXMmcrSk9hZmJqb2grdHdUWVljRG13c290MjQrWVVGM3NoMWdiK21a?=
 =?utf-8?B?NFdmOU1zZWNFUmZFWXpIaDNqYjJiUEtlTnJJcnhCN0NZVDJ5K3draFR0VktG?=
 =?utf-8?B?SDBWSFVpbmx4L2tqYW1nZ3VqVGhuZEZmL3IxbWVNcU5WTWttUTBKTy9ZWnpU?=
 =?utf-8?B?NUdmK0Q1Z3REQXd4ZTdaanlvblVZL0ZGeEdJWG5nc0Ezb1RQU05xVldLbnN3?=
 =?utf-8?B?S3VGUWZUZkJ2eG5ZeHZOaFU3d2RJWTE2OE1aYjA1WEpMdG0xVHRIdVRRb1Bz?=
 =?utf-8?B?QlJZRWZxc3RPZ25BRE1SWnFyV3FaRGxGMGpLWlNSSUh1dmpXZkNXc3hEYlpR?=
 =?utf-8?B?UTVDMkxNMGx2aUY3VFlqNGJBbEpSanFhRG1xK1AzL2hoRllCY1RCZnp2aEkz?=
 =?utf-8?B?Rnd3V0Rnd25LS042MS80azVrZnp1ZkE4Q3hlZ2plR1pwaHJ0aHZKYUgzb1dr?=
 =?utf-8?B?N1NxdmhFQzJ2eFN2bE1qaVRiMjRrNk5ZVnVON2tETWhobkgrMnMvcEtRcE9F?=
 =?utf-8?B?UkJSSVl3NCtCVVg1dCtZeTBPMHN6bktLN2NPNUMxeEFoQjRrRmwvbmFaaXA1?=
 =?utf-8?B?YTRnUW9RMHEzekxuLzNtZEdFRU1kVFlucnorYWpQNUpFckZ4OUc5VjZoNmxO?=
 =?utf-8?B?SG9QalE5SVZkOFgzR1J6ZTF3L0dFYXRLdVpOUzhabVRxMmNBWDRudkQ0Vm9m?=
 =?utf-8?B?VHoyRDdYRnRzQ3dCYnhaZjM0dnJ3dHp3REtySmdqR2Q0L2J2L01lQlhKb21x?=
 =?utf-8?B?ZTcra2loeWQ1MC9UbmR1dk9xUmJLbzA1eStpSXgwd0gyVkhnczRtMzVXTnB4?=
 =?utf-8?B?TjNpaktqbVMybE93VkZwV05kVFZrV1FlcVRJZlRTQXd5WjQ1N3dxNUcyV1JQ?=
 =?utf-8?B?VFVoeEdBVW5TTVA2bnlXVHB0WXExQzJReWRydlZpRnNMZlZhWDlrMVozdmYw?=
 =?utf-8?B?Smp2VFJrWU1aVGJkbXBWNjhGVWZKMDV2ZUtkZ1EzQUpkRVlNSlpyaUVIQXFi?=
 =?utf-8?B?dG1HeGVnOWhUTjcvcUtWZFVLMXVuWTNMdlJhYlpmWW1xdXlBc2dKQWViZTFI?=
 =?utf-8?B?ZkhKUzNTQVRnQWkyUS9VV3RRUGRWdy9CVTRNOTFZeVRoeUlCVXM2RG1wdlhK?=
 =?utf-8?B?enhUdC9yRVlmZng3UmxpL1Q5MjhvRnhjZTdCUm9VM2NqdnBJdFVWUXNLa0Jz?=
 =?utf-8?B?YWxpUG15OFhsT3AyRXRzaWg2cnVrRVNhNDFlRkl1Q09uNzcxUGFmS3lzYmlS?=
 =?utf-8?B?ejF3OXNkWEZqYlRvYmpnR1JPM0tZZmhqSkZ5VWl6S3JFeEg4SDJlWUc0dE1q?=
 =?utf-8?B?cjczTUpuZEVCS1RZcFplMHROaUxUSHhOOU5pVHY1TXpFd3dWZ1NEVWI1cERE?=
 =?utf-8?B?ZjkwdHBtdDdORXdzOHpucms5MUxvSEdTbjVmRmIzbkhRQVRyNE81RzBMcC9W?=
 =?utf-8?B?R2htYjAwWEJRQmNCUDF6aWhLOGxuellEc285Mk95aGV2Y1dTa0k4UStYblZo?=
 =?utf-8?B?cjl5UWpjekZZTGhWb0gvaGd0NkhzMUY4VmFIQXBMYW9iQS9lT1Q2ZllKNmd4?=
 =?utf-8?B?MzMvUk1mWTdwMkpBZlRoRjZCcDBPZXFYbytYWUl4enNPSkJmTU4ydmFScmgr?=
 =?utf-8?B?VUdvOGtzUjl2QVVvVE5rSnBJV1lOd3NvcUl4RFljQVM5WFJ3elJodFdIeThW?=
 =?utf-8?B?ajRoNFk2MlZDeFdGRmF3T3QwNE9yTjRJVkM5eG9rL1lSVytHTnUwWWpIYTV1?=
 =?utf-8?B?UG00NytiS3A4dHBleFlpcmovaDFDYndJbGhwZVVLL0VvNFBRMGQ1ZjdBbXhD?=
 =?utf-8?B?MnZnT0x4QXZCbGhldjJ4L3V5eXg4VGJ4VnZBejdjVlpsNk9ZUDVNWWk2ZmI5?=
 =?utf-8?Q?gm+3FBEjkmWDk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Uk16dk5UOFNBdDhxOEdkV2VrMkFpQVhCSEhRYklGcVZ2RitXSUFxQkFnRWVE?=
 =?utf-8?B?cjQyRi9EUy9acHpqdW9IQ3dMN3ZvU0pCOWlYYm44NmozU3JHSCt5V1ZHcktD?=
 =?utf-8?B?YVNzcmlLNzRabm5oekJRaE9WV3A5SWJ1K3N4cDJLSm05eEkxQUUwSmMzZE80?=
 =?utf-8?B?NUFITW1RVVpyN05RR0xyQWJ1YXE3ZG41WXQ2djRNVGtjWUwzMmZiMzBVV05D?=
 =?utf-8?B?bXlWNWdqZ0NIUy95ZEVQLzcvWkZ2Q3Rqb05Nb1gwTm41eHpTQU9lNEw3MG5i?=
 =?utf-8?B?SkJiZ2NsQTRCdkZZK1pPV0RqaXRBdHI5RjR4Ukl2Wi9STGdvTXRkclJqRElp?=
 =?utf-8?B?cHZzVVV3WWUxWG50cDVTL2EvdFdDWFIySnZXUSswYXBaVmdlcjIzV2FTUWYz?=
 =?utf-8?B?L1pqN1o5WG5rSm5FS0d3OVVLVVQzMHVJZE5lK0EwMkVTTUg4TklNUkswc3U4?=
 =?utf-8?B?elU1eGRwblo2Q2tXUStiTDVGLzJnVUdENnM5dlg2TTFWMkNRd3RyeVJvYjlw?=
 =?utf-8?B?OE5yWjQ5Y1BWbnZ4M3RVc0ZVK29IWW0xay9GQTlxV3liVUJOZEw1T1huaytz?=
 =?utf-8?B?Y2l0bGxzNHM1ZWZDS0RkL2NzRzZzemNVRXJ5NnlWaWNWR0kvYmN2WWo2RHBn?=
 =?utf-8?B?VGVPM3N6R1NNazFWcE95RytIRkxMN2ZkdFR3L0tMM0FRa0Zudng0N2pOVzVR?=
 =?utf-8?B?b05aTy81NHl3cXZJaDNyQ0VRUmYzaHlnOTdtbWJyQm84YXRWRWErZlphYmkx?=
 =?utf-8?B?aTZGK3VQY1h0a0lpOW8xVytJMHpjV2VmY1RnOWZwdUJxZzk3ekprdzBnU2dm?=
 =?utf-8?B?LzI4SlpKL3YzMUVucnlURlY3WWIyMURseExxczlzd1Q1L3Q0Qk1NSGFnM0hQ?=
 =?utf-8?B?ZHdZNEdrVHJOb1RRSUt0Rm9vQWcyYXV1VG8ydXVHTk50azM0QVNZM2NUSmov?=
 =?utf-8?B?ZEdtVHIydDMwckdzTGU0UTI3cVoyU2loSnpHK1YzZWQxZTBEZ0x4Zklpemls?=
 =?utf-8?B?bS9vOHorR1dySjFsRmU1ZlBTTFBLUXBNVU5PN1NRQlVQakZVMUNZVnhkTnB4?=
 =?utf-8?B?RDV3QjdaU1NLNk5lQzRJVkFsejFwOGEwN2dMbVNtbjBhU2dhMXI1M3VFQTU1?=
 =?utf-8?B?TnI4MXc4YzdwZ2RKY01vTFhIeFB1TjNCS08rQVZHWU92aksrYm5TY3ZCdGt2?=
 =?utf-8?B?ZStTU1NRNFhiTmZva0pNOWJOYUltNmN1bEJQbmlNenJQM0oxc1lncUdwUTBr?=
 =?utf-8?B?NlBPdkF5ZzAvVnpUSWV2ZmpqWVRGRXpXNU9FcUt1eEE2WkE5NE15SFZxcUFa?=
 =?utf-8?B?NnBubGhRZXhjN0tsdFBubkdvM3BLdjZMbnd6N2w5aXRMMHlEa1RKM0d6UDF6?=
 =?utf-8?B?RmlLd0lXMVJ5VUI4Z3h3a1NKVzYvNTJFQkszakZaWlBaUnppUnpTRGdsWFZW?=
 =?utf-8?B?ZzBoeTZ5L2VicGo5U0RYQzEzQUwxd1kzYmxhMU5CNHBQb2oyM1JBUm1jVDNm?=
 =?utf-8?B?Zmh6TGhXL01Pem85dmxoeCs3dlMyQzdLSUpEQjJpOE0zSW1lcHhDY1FnbE82?=
 =?utf-8?B?RUo1L3psRjdlNXg5eFVqSDc2V1VWOFlreE5YNGQxdm9SY2pyNU5RcFMrbkNt?=
 =?utf-8?B?VlJTb3BBUi9Dd1VlSCtSVFNJVW91U0t0czNmaU5vN2dvanZPYThlNndFV0xa?=
 =?utf-8?B?ZWdvM0tGT0VQRUdjd3NXN3l1QmVMWjhFRWkybTMyMVltREFacENIRU5pYVhJ?=
 =?utf-8?B?ZG1hQzgrOUlzMlV1bWRFU1R3QTZSc3BvS0pWTk5Vd3FsKy84RWd2cmUwZm1Q?=
 =?utf-8?B?TkMxYi9NYm5jWkhjaUxEMGxsMlVROFBTallHc1N3NjlNYWh4SWNuQlp6Y1d0?=
 =?utf-8?B?VFVzQmUwTkREb3hjblVmcGxBYXJSckZTSjQ5QlB5ejJPcks5L05kdzRkS08x?=
 =?utf-8?B?WEZIR1kybGVaalFidENDRjJrYnNXSFJVR1pGcVVwVjFDdzRmRGZLOGtmUUty?=
 =?utf-8?B?YVRGcFJzLzhQM1dFMkZtdE9oSk1pemlmU2NkU24vditwZCtzTlU4OGtmR0ZF?=
 =?utf-8?B?cUpTYzZUYWc5TDMzQnNMZmNDOEY4Sjk1M3c5Y2orL1FRWVQ4cTFqS2V3VTJj?=
 =?utf-8?B?TEpodkZmRTljRy96Y29TRjJQb1YxRExYTnlvWG4rWmE2VXRZeCtzVVRrRzlm?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: QILlxvfZlMrZvKb0Dfm32X2zpXZy6x+JKyh9XAVepYd1waGSUssO2Aynx7xzdXdAivzIN9yZBsnqQoaJ7WhBL4+0uydMFGkR9cqvw3M7k1nhhPRLhUYHwdRU0+40IlBr5DDDqasON3+xl0aIyzScu+Wj7TQChbH4qpTM1wmpw1FcrA9fK1xjCkrdNGDOeGH6fkU2h+j5BePIAgksq7Vh/PapK5QBpjE4OHM4bsJmNuWB8ENhHDCnLEonEVggCk/YeYoZwHw+tcafDS4qjUfXld3RbfOvkDXFx46jn9vW/xlFjYpz7BkCqd2Z8CseB4XOkQT0sbCqFQkL7CQdE6QJYJ1R07Y9fCIdNZzAWlmMNBP6jMEPEZ7Ccs2IUVFvXUILmNpgqtPrm4D0qMZF9d4G409jBiMlJwmxjyL50FzIZc4WkgcL2mgV07Sy68BCQKBCCWJB0AXIsidm4q5WT/KblmWiQRopSGVQN1G4b/gvscWl0n1c2z9H7+CkG4M0zSJ9zrXcPrLaTxQz4eqJQfmPTsvvNDJNVrTcPK+mOI+pJj2BRUF0dk48N4DMpdFUkB47U41yOdTGsJANN3+4y4lfr23V1BakJNEArjAunR4pKlw=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5349b59-015f-4b35-bc64-08dd7150d638
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2025 19:10:16.3219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DL0TEgHU+/cmLoGp9Wt2K6ZCD9cm3x/VB8YrD3f7iusvxNlvGDZrofYEm0DzobvzI97kXzdlafnhglPRU4FG9zHoYiPwqawqMcvXD+uL1Zk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB4885
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_08,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 suspectscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2502280000 definitions=main-2504010117
X-Proofpoint-ORIG-GUID: hyZgpi9VaYViHKeh2A_JkP7W_TpOzN3l
X-Proofpoint-GUID: hyZgpi9VaYViHKeh2A_JkP7W_TpOzN3l
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 3/12/25 1:28PM, Suchit K wrote: > Hi Dave, > Thanks for
    the comments. I’m still a beginner so I wanted to share my > thoughts and
    check with you. Almost all references to the xt_getpage > functio [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [205.220.177.32 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [205.220.177.32 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [205.220.177.32 listed in sa-trusted.bondedsender.org]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
                             [205.220.177.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tzh0K-0005bk-08
Subject: Re: [Jfs-discussion] [PATCH] jfs: jfs_xtree: replace XT_GETPAGE
 macro with xt_getpage() function
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMy8xMi8yNSAxOjI4UE0sIFN1Y2hpdCBLIHdyb3RlOgo+IEhpIERhdmUsCj4gVGhhbmtzIGZv
ciB0aGUgY29tbWVudHMuIEnigJltIHN0aWxsIGEgYmVnaW5uZXIgc28gSSB3YW50ZWQgdG8gc2hh
cmUgbXkKPiB0aG91Z2h0cyBhbmQgY2hlY2sgd2l0aCB5b3UuIEFsbW9zdCBhbGwgcmVmZXJlbmNl
cyB0byB0aGUgeHRfZ2V0cGFnZQo+IGZ1bmN0aW9uIGRpcmVjdGx5IHJldHVybiB0aGUgcmMgdmFs
dWUgb2J0YWluZWQgZnJvbSBpdC4gSSBmZWVsIHRoYXQKPiBjaGFuZ2luZyBpdHMgcmV0dXJuIHR5
cGUgdG8gKHh0cGFnZV90ICopIG1pZ2h0IG5vdCBiZSBpZGVhbCwgYXMgaXQKPiB3b3VsZCByZXF1
aXJlIG1vZGlmeWluZyB0aGUgY29kZSBpbiBtdWx0aXBsZSBwbGFjZXMuIFRoYXQgc2FpZCwgaWYg
eW91Cj4gdGhpbmsgY2hhbmdpbmcgdGhlIHJldHVybiB2YWx1ZSBpcyB0aGUgYmV0dGVyIGFwcHJv
YWNoLCBJ4oCZbGwgdHJ5IHRvCj4gY2hhbmdlIGl0LiBBbHNvLCBJ4oCZbGwgdXBkYXRlIHN0cnVj
dCBpbm9kZSoqIGlwIHRvIHN0cnVjdCBpbm9kZSogaXAuCj4gVGhhbmtzIG9uY2UgYWdhaW4uCgpT
b3JyeSBmb3IgdGFraW5nIHNvIGxvbmcgdG8gcmVzcG9uZC4KCkkgcmVhbGx5IHRoaW5rIHRoYXQg
YXMgbG9uZyBhcyB3ZSBhcmUgcmVwbGFjaW5nIGFuIHVnbHkgbWFjcm8gd2l0aCBhIApmdW5jdGlv
biwgd2Ugc2hvdWxkIG1ha2UgdGhlIGZ1bmN0aW9uIGFjdHVhbGx5IHJldHVybiB3aGF0IHdlIGFy
ZSAKaW50ZXJlc3RlZCBpbi4gQSBjYXNlIGNvdWxkIGJlIG1hZGUgZm9yIGVpdGhlciB0aGUgbWV0
YXBhZ2Ugb3IgdGhlIAp4dHBhZ2VfdCwgYnV0IEkgd291bGQgY2hvb3NlIHRoZSB4dHBhZ2VfdC4g
T2YgY291cnNlLCBpdCBzaG91bGQgcmV0dXJuIAphbiBFUlJfUFRSIGlmIGl0IGZhaWxzLiBJIGtu
b3cgaXQncyBhIGxpdHRsZSBtb3JlIHdvcmsgY2hhbmdpbmcgdGhlIApjYWxsZXJzIHRvIGhhbmRs
ZSB0aGF0LCBidXQgdGhlIHJlc3VsdCB3b3VsZCBiZSBhIGJpdCBjbGVhbmVyLgoKVGhhbmtzLApT
aGFnZ3kKCj4gCj4gT24gVHVlLCAxMSBNYXIgMjAyNSBhdCAyMjoxOSwgRGF2ZSBLbGVpa2FtcCA8
ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29tPiB3cm90ZToKPj4KPj4gT24gMy8yLzI1IDE6MTVQTSwg
U3VjaGl0IEthcnVuYWthcmFuIHdyb3RlOgo+Pj4gUmVwbGFjZSBsZWdhY3kgWFRfR0VUUEFHRSBt
YWNybyB3aXRoIGFuIGlubGluZSBmdW5jdGlvbiBhbmQgdXBkYXRlIGFsbAo+Pj4gaW5zdGFuY2Vz
IG9mIFhUX0dFVFBBR0UgaW4gamZzX3h0cmVlLmMgZmlsZSB0byB1c2UgdGhlIG5ldyBmdW5jdGlv
bi4KPj4KPj4gSSBsaWtlIHRoZSBpZGVhLCBidXQgYXMgbG9uZyBhcyB3ZSBhcmUgY2hhbmdpbmcg
dGhpcyB0byBhIGZ1bmN0aW9uLCBJJ2QKPj4gbGlrZSB0byBzaW1wbGlmeSBpdCB0byByZXR1cm4g
dGhlIHh0cGFnZSAoeHRwYWdlX3QgKikuIEEgTlVMTCByZXR1cm4KPj4gd291bGQgaW5kaWNhdGUg
YSBmYWlsdXJlLgo+Pgo+PiBBbHNvLCB0aGUgZmlyc3QgYXJndW1lbnQgc2hvdWxkIGp1c3QgYmUg
InN0cnVjdCBpbm9kZSAqaXAiLiBUaGF0IHNob3VsZAo+PiBlbGltaW5hdGUgeW91ciBzZWNvbmQg
cGF0Y2guCj4+ICAgID4KPj4+IFNpZ25lZC1vZmYtYnk6IFN1Y2hpdCBLYXJ1bmFrYXJhbiA8c3Vj
aGl0a2FydW5ha2FyYW5AZ21haWwuY29tPgo+Pj4gLS0tCj4+PiAgICBmcy9qZnMvamZzX3h0cmVl
LmMgfCA4NiArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCj4+
PiAgICAxIGZpbGUgY2hhbmdlZCwgNTIgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pCj4+
Pgo+Pj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfeHRyZWUuYyBiL2ZzL2pmcy9qZnNfeHRyZWUu
Ywo+Pj4gaW5kZXggNWVlNjE4ZDE3ZTc3Li5mYjczNmEwNmVhNTggMTAwNjQ0Cj4+PiAtLS0gYS9m
cy9qZnMvamZzX3h0cmVlLmMKPj4+ICsrKyBiL2ZzL2pmcy9qZnNfeHRyZWUuYwo+Pj4gQEAgLTQ5
LDI2ICs0OSw2IEBACj4+Pgo+Pj4gICAgI2RlZmluZSBYVF9QQUdFKElQLCBNUCkgQlRfUEFHRShJ
UCwgTVAsIHh0cGFnZV90LCBpX3h0cm9vdCkKPj4+Cj4+PiAtLyogZ2V0IHBhZ2UgYnVmZmVyIGZv
ciBzcGVjaWZpZWQgYmxvY2sgYWRkcmVzcyAqLwo+Pj4gLS8qIFRvRG86IFJlcGxhY2UgdGhpcyB1
Z2x5IG1hY3JvIHdpdGggYSBmdW5jdGlvbiAqLwo+Pj4gLSNkZWZpbmUgWFRfR0VUUEFHRShJUCwg
Qk4sIE1QLCBTSVpFLCBQLCBSQykgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPj4+IC1kbyB7
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBcCj4+PiAtICAgICBCVF9HRVRQQUdFKElQLCBCTiwgTVAsIHh0cGFnZV90LCBTSVpF
LCBQLCBSQywgaV94dHJvb3QpOyAgICAgICAgXAo+Pj4gLSAgICAgaWYgKCEoUkMpKSB7ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPj4+IC0gICAg
ICAgICAgICAgaWYgKChsZTE2X3RvX2NwdSgoUCktPmhlYWRlci5uZXh0aW5kZXgpIDwgWFRFTlRS
WVNUQVJUKSB8fCBcCj4+PiAtICAgICAgICAgICAgICAgICAobGUxNl90b19jcHUoKFApLT5oZWFk
ZXIubmV4dGluZGV4KSA+ICAgICAgICAgICAgICAgXAo+Pj4gLSAgICAgICAgICAgICAgICAgIGxl
MTZfdG9fY3B1KChQKS0+aGVhZGVyLm1heGVudHJ5KSkgfHwgICAgICAgICAgICAgIFwKPj4+IC0g
ICAgICAgICAgICAgICAgIChsZTE2X3RvX2NwdSgoUCktPmhlYWRlci5tYXhlbnRyeSkgPiAgICAg
ICAgICAgICAgICBcCj4+PiAtICAgICAgICAgICAgICAgICAgKCgoQk4pID09IDApID8gWFRST09U
TUFYU0xPVCA6IFBTSVpFID4+IEwyWFRTTE9UU0laRSkpKSB7IFwKPj4+IC0gICAgICAgICAgICAg
ICAgICAgICBqZnNfZXJyb3IoKElQKS0+aV9zYiwgICAgICAgICAgICAgICAgICAgICAgICAgICBc
Cj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJYVF9HRVRQQUdFOiB4dHJlZSBw
YWdlIGNvcnJ1cHRcbiIpOyAgXAo+Pj4gLSAgICAgICAgICAgICAgICAgICAgIEJUX1BVVFBBR0Uo
TVApOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPj4+IC0gICAgICAgICAgICAg
ICAgICAgICBNUCA9IE5VTEw7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBc
Cj4+PiAtICAgICAgICAgICAgICAgICAgICAgUkMgPSAtRUlPOyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXAo+Pj4gLSAgICAgICAgICAgICB9ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPj4+IC0gICAgIH0gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBc
Cj4+PiAtfSB3aGlsZSAoMCkKPj4+IC0KPj4+ICAgIC8qIGZvciBjb25zaXN0ZW5jeSAqLwo+Pj4g
ICAgI2RlZmluZSBYVF9QVVRQQUdFKE1QKSBCVF9QVVRQQUdFKE1QKQo+Pj4KPj4+IEBAIC0xMTQs
NiArOTQsNDQgQEAgc3RhdGljIGludCB4dFNwbGl0UGFnZSh0aWRfdCB0aWQsIHN0cnVjdCBpbm9k
ZSAqaXAsIHN0cnVjdCB4dHNwbGl0ICogc3BsaXQsCj4+PiAgICBzdGF0aWMgaW50IHh0U3BsaXRS
b290KHRpZF90IHRpZCwgc3RydWN0IGlub2RlICppcCwKPj4+ICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgeHRzcGxpdCAqIHNwbGl0LCBzdHJ1Y3QgbWV0YXBhZ2UgKiogcm1wcCk7Cj4+Pgo+
Pj4gKy8qCj4+PiArICogICB4dF9nZXRwYWdlKCkKPj4+ICsgKgo+Pj4gKyAqIGZ1bmN0aW9uOiBn
ZXQgdGhlIHBhZ2UgYnVmZmVyIGZvciBhIHNwZWNpZmllZCBibG9jayBhZGRyZXNzLgo+Pj4gKyAq
Cj4+PiArICogcGFyYW1ldGVyczoKPj4+ICsgKiAgIGlwICAgICAgLSBwb2ludGVyIHRvIHRoZSBp
bm9kZQo+Pj4gKyAqICAgYm4gICAgICAtIGJsb2NrIG51bWJlciAoczY0KSBvZiB0aGUgeHRyZWUg
cGFnZSB0byBiZSByZXRyaWV2ZWQ7Cj4+PiArICogICBtcCAgICAgIC0gcG9pbnRlciB0byBhIG1l
dGFwYWdlIHBvaW50ZXIgd2hlcmUgdGhlIHBhZ2UgYnVmZmVyIGlzIHJldHVybmVkOwo+Pj4gKyAq
ICAgc2l6ZSAgICAtIHNpemUgcGFyYW1ldGVyIHRvIHBhc3MgdG8gQlRfR0VUUEFHRTsKPj4+ICsg
KiAgIHAgICAgICAgLSBwb2ludGVyIHRvIGFuIHh0cGFnZV90IHBvaW50ZXIgbWFwcGluZyB0aGUg
cGFnZSdzIGRhdGEuCj4+PiArICoKPj4+ICsgKiByZXR1cm5zOgo+Pj4gKyAqICAgMCBvbiBzdWNj
ZXNzLCBvciAtRUlPIGlmIHRoZSBwYWdlIGlzIGNvcnJ1cHQgb3IgYW4gZXJyb3Igb2NjdXJzLgo+
Pj4gKyAqLwo+Pj4gKwo+Pj4gK3N0YXRpYyBpbmxpbmUgaW50IHh0X2dldHBhZ2Uoc3RydWN0IGlu
b2RlICoqaXAsIHM2NCBibiwgc3RydWN0IG1ldGFwYWdlICoqbXAsCj4+PiArICAgICAgICAgICAg
ICAgICAgICAgdW5zaWduZWQgaW50IHNpemUsIHh0cGFnZV90ICoqcCkKPj4+ICt7Cj4+PiArICAg
ICBpbnQgcmM7Cj4+PiArCj4+PiArICAgICBCVF9HRVRQQUdFKGlwLCBibiwgKm1wLCB4dHBhZ2Vf
dCwgc2l6ZSwgKnAsIHJjLCBpX3h0cm9vdCk7Cj4+PiArCj4+PiArICAgICBpZiAoIXJjKSB7Cj4+
PiArICAgICAgICAgICAgIGlmICgobGUxNl90b19jcHUoKCpwKS0+aGVhZGVyLm5leHRpbmRleCkg
PCBYVEVOVFJZU1RBUlQpIHx8Cj4+PiArICAgICAgICAgICAgICAgICAgICAgKGxlMTZfdG9fY3B1
KCgqcCktPmhlYWRlci5uZXh0aW5kZXgpID4KPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGxlMTZfdG9fY3B1KCgqcCktPmhlYWRlci5tYXhlbnRyeSkpIHx8Cj4+PiArICAgICAgICAg
ICAgICAgICAgICAgKGxlMTZfdG9fY3B1KCgqcCktPmhlYWRlci5tYXhlbnRyeSkgPgo+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgKChibiA9PSAwKSA/IFhUUk9PVE1BWFNMT1QgOiBQ
U0laRSA+PiBMMlhUU0xPVFNJWkUpKSkgewo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGpmc19l
cnJvcihpcC0+aV9zYiwgInh0X2dldHBhZ2U6IHh0cmVlIHBhZ2UgY29ycnVwdFxuIik7Cj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgQlRfUFVUUEFHRSgqbXApOwo+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICptcCA9IE5VTEw7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgcmMgPSAtRUlPOwo+
Pj4gKyAgICAgICAgICAgICB9Cj4+PiArICAgICB9Cj4+PiArICAgICByZXR1cm4gcmM7Cj4+PiAr
fQo+Pj4gKwo+Pj4gICAgLyoKPj4+ICAgICAqICB4dExvb2t1cCgpCj4+PiAgICAgKgo+Pj4gQEAg
LTI1Miw3ICsyNzAsNyBAQCBzdGF0aWMgaW50IHh0U2VhcmNoKHN0cnVjdCBpbm9kZSAqaXAsIHM2
NCB4b2ZmLCAgIHM2NCAqbmV4dHAsCj4+PiAgICAgICAgICovCj4+PiAgICAgICAgZm9yIChibiA9
IDA7Oykgewo+Pj4gICAgICAgICAgICAgICAgLyogZ2V0L3BpbiB0aGUgcGFnZSB0byBzZWFyY2gg
Ki8KPj4+IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1wLCBQU0laRSwgcCwgcmMp
Owo+Pj4gKyAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAm
cCk7Cj4+PiAgICAgICAgICAgICAgICBpZiAocmMpCj4+PiAgICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiByYzsKPj4+Cj4+PiBAQCAtODA3LDcgKzgyNSw3IEBAIHh0U3BsaXRVcCh0aWRfdCB0
aWQsCj4+PiAgICAgICAgICAgICAgICAgKiBpbnNlcnQgcm91dGVyIGVudHJ5IGluIHBhcmVudCBm
b3IgbmV3IHJpZ2h0IGNoaWxkIHBhZ2UgPHJwPgo+Pj4gICAgICAgICAgICAgICAgICovCj4+PiAg
ICAgICAgICAgICAgICAvKiBnZXQvcGluIHRoZSBwYXJlbnQgcGFnZSA8c3A+ICovCj4+PiAtICAg
ICAgICAgICAgIFhUX0dFVFBBR0UoaXAsIHBhcmVudC0+Ym4sIHNtcCwgUFNJWkUsIHNwLCByYyk7
Cj4+PiArICAgICAgICAgICAgIHJjID0geHRfZ2V0cGFnZShpcCwgcGFyZW50LT5ibiwgJnNtcCwg
UFNJWkUsICZzcCk7Cj4+PiAgICAgICAgICAgICAgICBpZiAocmMpIHsKPj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgWFRfUFVUUEFHRShyY21wKTsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIHJjOwo+Pj4gQEAgLTEwNjIsNyArMTA4MCw3IEBAIHh0U3BsaXRQYWdlKHRpZF90IHRp
ZCwgc3RydWN0IGlub2RlICppcCwKPj4+ICAgICAgICAgKiB1cGRhdGUgcHJldmlvdXMgcG9pbnRl
ciBvZiBvbGQgbmV4dC9yaWdodCBwYWdlIG9mIDxzcD4KPj4+ICAgICAgICAgKi8KPj4+ICAgICAg
ICBpZiAobmV4dGJuICE9IDApIHsKPj4+IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwgbmV4
dGJuLCBtcCwgUFNJWkUsIHAsIHJjKTsKPj4+ICsgICAgICAgICAgICAgcmMgPSB4dF9nZXRwYWdl
KGlwLCBuZXh0Ym4sICZtcCwgUFNJWkUsICZwKTsKPj4+ICAgICAgICAgICAgICAgIGlmIChyYykg
ewo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBYVF9QVVRQQUdFKHJtcCk7Cj4+PiAgICAgICAg
ICAgICAgICAgICAgICAgIGdvdG8gY2xlYW5fdXA7Cj4+PiBAQCAtMTQxNyw3ICsxNDM1LDcgQEAg
aW50IHh0RXh0ZW5kKHRpZF90IHRpZCwgICAgICAgICAvKiB0cmFuc2FjdGlvbiBpZCAqLwo+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4+Pgo+Pj4gICAgICAgICAgICAgICAg
LyogZ2V0IGJhY2sgb2xkIHBhZ2UgKi8KPj4+IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwg
Ym4sIG1wLCBQU0laRSwgcCwgcmMpOwo+Pj4gKyAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2Uo
aXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4+PiAgICAgICAgICAgICAgICBpZiAocmMpCj4+PiAg
ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByYzsKPj4+ICAgICAgICAgICAgICAgIC8qCj4+
PiBAQCAtMTQzMyw3ICsxNDUxLDcgQEAgaW50IHh0RXh0ZW5kKHRpZF90IHRpZCwgICAgICAgICAv
KiB0cmFuc2FjdGlvbiBpZCAqLwo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBYVF9QVVRQQUdF
KG1wKTsKPj4+Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIC8qIGdldCBuZXcgY2hpbGQgcGFn
ZSAqLwo+Pj4gLSAgICAgICAgICAgICAgICAgICAgIFhUX0dFVFBBR0UoaXAsIGJuLCBtcCwgUFNJ
WkUsIHAsIHJjKTsKPj4+ICsgICAgICAgICAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAs
IGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChyYykK
Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4+Pgo+Pj4gQEAg
LTE3MTEsNyArMTcyOSw3IEBAIGludCB4dFVwZGF0ZSh0aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAq
aXAsIHhhZF90ICogbnhhZCkKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+
Pj4KPj4+ICAgICAgICAgICAgICAgIC8qIGdldCBiYWNrIG9sZCBwYWdlICovCj4+PiAtICAgICAg
ICAgICAgIFhUX0dFVFBBR0UoaXAsIGJuLCBtcCwgUFNJWkUsIHAsIHJjKTsKPj4+ICsgICAgICAg
ICAgICAgcmMgPSB4dF9nZXRwYWdlKGlwLCBibiwgJm1wLCBQU0laRSwgJnApOwo+Pj4gICAgICAg
ICAgICAgICAgaWYgKHJjKQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4+
PiAgICAgICAgICAgICAgICAvKgo+Pj4gQEAgLTE3MjcsNyArMTc0NSw3IEBAIGludCB4dFVwZGF0
ZSh0aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAqaXAsIHhhZF90ICogbnhhZCkKPj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgWFRfUFVUUEFHRShtcCk7Cj4+Pgo+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICAvKiBnZXQgbmV3IGNoaWxkIHBhZ2UgKi8KPj4+IC0gICAgICAgICAgICAgICAgICAgICBY
VF9HRVRQQUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4+PiArICAgICAgICAgICAgICAg
ICAgICAgcmMgPSB4dF9nZXRwYWdlKGlwLCBibiwgJm1wLCBQU0laRSwgJnApOwo+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICBpZiAocmMpCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIHJjOwo+Pj4KPj4+IEBAIC0xNzg4LDcgKzE4MDYsNyBAQCBpbnQgeHRVcGRhdGUo
dGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUgKmlwLCB4YWRfdCAqIG54YWQpCj4+PiAgICAgICAgICAg
ICAgICBYVF9QVVRQQUdFKG1wKTsKPj4+Cj4+PiAgICAgICAgICAgICAgICAvKiBnZXQgbmV3IHJp
Z2h0IHBhZ2UgKi8KPj4+IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1wLCBQU0la
RSwgcCwgcmMpOwo+Pj4gKyAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAs
IFBTSVpFLCAmcCk7Cj4+PiAgICAgICAgICAgICAgICBpZiAocmMpCj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgIHJldHVybiByYzsKPj4+Cj4+PiBAQCAtMTg2NCw3ICsxODgyLDcgQEAgcHJpbnRm
KCJ4dFVwZGF0ZS51cGRhdGVMZWZ0LnNwbGl0IHA6MHglcFxuIiwgcCk7Cj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgIHJldHVybiByYzsKPj4+Cj4+PiAgICAgICAgICAgICAgICAvKiBnZXQgYmFj
ayBvbGQgcGFnZSAqLwo+Pj4gLSAgICAgICAgICAgICBYVF9HRVRQQUdFKGlwLCBibiwgbXAsIFBT
SVpFLCBwLCByYyk7Cj4+PiArICAgICAgICAgICAgIHJjID0geHRfZ2V0cGFnZShpcCwgYm4sICZt
cCwgUFNJWkUsICZwKTsKPj4+ICAgICAgICAgICAgICAgIGlmIChyYykKPj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIHJjOwo+Pj4KPj4+IEBAIC0xODgxLDcgKzE4OTksNyBAQCBwcmlu
dGYoInh0VXBkYXRlLnVwZGF0ZUxlZnQuc3BsaXQgcDoweCVwXG4iLCBwKTsKPj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgWFRfUFVUUEFHRShtcCk7Cj4+Pgo+Pj4gICAgICAgICAgICAgICAgICAg
ICAgICAvKiBnZXQgbmV3IGNoaWxkIHBhZ2UgKi8KPj4+IC0gICAgICAgICAgICAgICAgICAgICBY
VF9HRVRQQUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4+PiArICAgICAgICAgICAgICAg
ICAgICAgcmMgPSB4dF9nZXRwYWdlKGlwLCBibiwgJm1wLCBQU0laRSwgJnApOwo+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICBpZiAocmMpCj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgcmV0dXJuIHJjOwo+Pj4KPj4+IEBAIC0yMjY4LDcgKzIyODYsNyBAQCBzNjQgeHRUcnVuY2F0
ZSh0aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAqaXAsIHM2NCBuZXdzaXplLCBpbnQgZmxhZykKPj4+
ICAgICAgICAgKiBmaXJzdCBhY2Nlc3Mgb2YgZWFjaCBwYWdlOgo+Pj4gICAgICAgICAqLwo+Pj4g
ICAgICAgICAgZ2V0UGFnZToKPj4+IC0gICAgIFhUX0dFVFBBR0UoaXAsIGJuLCBtcCwgUFNJWkUs
IHAsIHJjKTsKPj4+ICsgICAgIHJjID0geHRfZ2V0cGFnZShpcCwgYm4sICZtcCwgUFNJWkUsICZw
KTsKPj4+ICAgICAgICBpZiAocmMpCj4+PiAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4+Pgo+
Pj4gQEAgLTI1MDYsNyArMjUyNCw3IEBAIHM2NCB4dFRydW5jYXRlKHRpZF90IHRpZCwgc3RydWN0
IGlub2RlICppcCwgczY0IG5ld3NpemUsIGludCBmbGFnKQo+Pj4KPj4+ICAgICAgICAvKiBnZXQg
YmFjayB0aGUgcGFyZW50IHBhZ2UgKi8KPj4+ICAgICAgICBibiA9IHBhcmVudC0+Ym47Cj4+PiAt
ICAgICBYVF9HRVRQQUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4+PiArICAgICByYyA9
IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4+PiAgICAgICAgaWYgKHJjKQo+
Pj4gICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+Pj4KPj4+IEBAIC0yNzkxLDcgKzI4MDksNyBA
QCBzNjQgeHRUcnVuY2F0ZV9wbWFwKHRpZF90IHRpZCwgc3RydWN0IGlub2RlICppcCwgczY0IGNv
bW1pdHRlZF9zaXplKQo+Pj4gICAgICAgICAgICAgICAgICogZmlyc3QgYWNjZXNzIG9mIGVhY2gg
cGFnZToKPj4+ICAgICAgICAgICAgICAgICAqLwo+Pj4gICAgICAgICAgZ2V0UGFnZToKPj4+IC0g
ICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1wLCBQU0laRSwgcCwgcmMpOwo+Pj4gKyAg
ICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4+PiAg
ICAgICAgICAgICAgICBpZiAocmMpCj4+PiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBy
YzsKPj4+Cj4+PiBAQCAtMjgzNiw3ICsyODU0LDcgQEAgczY0IHh0VHJ1bmNhdGVfcG1hcCh0aWRf
dCB0aWQsIHN0cnVjdCBpbm9kZSAqaXAsIHM2NCBjb21taXR0ZWRfc2l6ZSkKPj4+Cj4+PiAgICAg
ICAgLyogZ2V0IGJhY2sgdGhlIHBhcmVudCBwYWdlICovCj4+PiAgICAgICAgYm4gPSBwYXJlbnQt
PmJuOwo+Pj4gLSAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1wLCBQU0laRSwgcCwgcmMpOwo+Pj4g
KyAgICAgcmMgPSB4dF9nZXRwYWdlKGlwLCBibiwgJm1wLCBQU0laRSwgJnApOwo+Pj4gICAgICAg
IGlmIChyYykKPj4+ICAgICAgICAgICAgICAgIHJldHVybiByYzsKPj4+Cj4+CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
