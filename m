Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED57A7B822A
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Oct 2023 16:23:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qo2mO-00016e-9A;
	Wed, 04 Oct 2023 14:23:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qo2mH-00016W-DK
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 14:23:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vnmlcQC+73Cz98Kk+sparXuHKEpPot5iMjzu39hFicg=; b=XUCM1Fr0zZdQxt/rqZcR+2eb0/
 bTIyEeBvtogbC+7EAnI7jdtl45Y6LBMlhQyDu0aawX0DAnoOI3POtCMnrS4LH+N9qOgTkt+m6pvMr
 tYMyIoMDJ8MHbHYvgo3pao0iYGL980MYlBSrD6HHdwijJKliwWdhytzttLUdKGXRu6lQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vnmlcQC+73Cz98Kk+sparXuHKEpPot5iMjzu39hFicg=; b=hGioEO//Wm4HnBtLyLCHglscml
 Mdy0BCQDWNOME8MGBmmbhfZIN9sL31mDclQwfB1Ve04xzjctEQXy2d1EXmYrBEY1KSzhgRgN1N2vu
 9ejAY5cW7OcBEF4Am2JIl5iripDy89ux8nzd01gvmE3yC2TzlWelCCeqM1mIKHIencSA=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qo2mA-0002WF-6E for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Oct 2023 14:23:05 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 3948ip0Q031385; Wed, 4 Oct 2023 14:22:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=vnmlcQC+73Cz98Kk+sparXuHKEpPot5iMjzu39hFicg=;
 b=s79++V9MgiV9vtiInCxljrzcLhTJnvQ8BQbnQU4UMD1nV0x8WHS0hNbvgJ1NB4usvxzS
 4lERT2938XVlQ+yv374Ts1WSg/XxN46dlRelAUuqn/pPDR5+y5zggOTHQI3gtoyIv9Y0
 Q32reHjx7mLV7lUQLRbEPqVW/1PhsJtfpI9+95vCemc1E64Nwsa0dYvytF3fPxmzwAzL
 2Op8Z4AW/X+SgO2AkqAflzafTe+OvRRFKvSsOqQBL1WHuesHswDz4zs2RFNqdaqZsDbj
 FLywYoLX4ruM7bR1ODMjUvKQGhBwTuToUqXSxVie17jLi2kzspB2lL5mmDwllrImVl3M 5g== 
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3teaf478sv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Oct 2023 14:22:50 +0000
Received: from pps.filterd
 (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 394Cuo2v005846; Wed, 4 Oct 2023 14:22:49 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2106.outbound.protection.outlook.com [104.47.58.106])
 by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3tea47p8c8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Oct 2023 14:22:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RH/4DRDYUATQkfosO0/o+6WXvA08RS968WHVxlDXzHXJFu0f++23q8F4cHTfxJYNiDULk+EH3u4x4mQaLxCR6RdXgYdbMSyVzcgvslXX0Qp6Y813PlxMVrEg8XmpGteDWrU2IY/7VXNaoFqevazdMhYoKFxsuwnHUlV0AzvTUl2IeHhrsZVBV4fYFvniXqN2CZ2NpMWRHyJUbQndJTUQwOI2ewqKg2y5uoQXP3KIjJSAm5pY4xDcbPgljMxuvp5K3THfrRM2pPH6EVCsXYP/dSnkCcLRPHKeZBfXXgxCMeuDc9bWvIyycdFUHrqig7qvgHlkAqKIjIABuZ7gaeXLvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnmlcQC+73Cz98Kk+sparXuHKEpPot5iMjzu39hFicg=;
 b=YGCUxkTj+mc+PEbBRa44zThUJpE5nx9HGCaUJTTMLo2yXSwkg24Zk+hvv7QpZwQBBSG8sBTvTqP7JG7TB9Tn9SFWws5+44FKiJlWt84NRY5dBfEeO1BWnIZfBbr/pA/31PeWAZsQa6VjZdrJDQvXVDZUYRqe4QJf1fbaOuP8JSO4pG04PfoBDdG17k9ihANp+mpAYc3oe7AP9XmSZ5LKlxr2hhZ4gpw8W38nnCUnYNf5x4qvD3Z1HFvQafbwLSeeE0RXDChP/B5gkn3Y/Dpwj+c7EALlGTWF2MXMMwXKIcDiRwKQnzxL6p971kkkQxTI837AEt6ahWiJRAsWdJhk8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnmlcQC+73Cz98Kk+sparXuHKEpPot5iMjzu39hFicg=;
 b=CI3vU0NNRjT/EDj+AOJP2A2PhXCA7RbUsCf05Q6Yr5vpBNM07Nne5CRx1inhzWC2RP2IFUrYsDnd3o7QiUXUyIDHM0NTTZ7etTh4BSsTm2o2tNghRiuLs22DiY1r6Zc5sFnh8a1blnu8KAH1/Z2wNxDVxN1Oce2Erq5m8da0T2s=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA0PR10MB7301.namprd10.prod.outlook.com (2603:10b6:208:404::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.31; Wed, 4 Oct
 2023 14:22:46 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::5943:cf66:5683:21be%4]) with mapi id 15.20.6792.024; Wed, 4 Oct 2023
 14:22:46 +0000
Message-ID: <86037633-6741-44bc-87a9-171d7021171d@oracle.com>
Date: Wed, 4 Oct 2023 09:22:42 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Manas Ghandat <ghandatmanas@gmail.com>
References: <20231004054718.7976-1-ghandatmanas@gmail.com>
In-Reply-To: <20231004054718.7976-1-ghandatmanas@gmail.com>
X-ClientProxiedBy: CH2PR05CA0007.namprd05.prod.outlook.com (2603:10b6:610::20)
 To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA0PR10MB7301:EE_
X-MS-Office365-Filtering-Correlation-Id: fc5e383a-f625-491b-1083-08dbc4e560fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEJNUTBpZ1FLZHhsK0pwdmhEUGhia0srWUtTRVNlcGEyejRuRXBmUHJqRkFn?=
 =?utf-8?B?UTBITlJEMDVJbFcwUHpTQXp6NklxTTZrRk8rbml4NTEwcjAzaThiSnNwUzBm?=
 =?utf-8?B?Z0szQm1vQ1hkMEwzUFo0Z3FkWmZQOERjTlh4MlNsZWNleWF1bWV0M3dhM1Jv?=
 =?utf-8?B?OUpvM3ZWNDEzNC9PN1g0UFVhYVNHQzN1MGU1M2xiRVA2TVBpZUVJZVhQRktI?=
 =?utf-8?B?MEpkUmduT2hoUlFsb2tZTDhkUEdXS3JCaXhQZmhXMFIwS2kyYUtvbm9pYW9a?=
 =?utf-8?B?am9NVlNCWHRsYmxUYVFJZ01wK3lLU2V5QVcwb0drTG5UdDRldE5HL0U2Tjlk?=
 =?utf-8?B?LzJJRFRPWmo4bGV3di9nRU8vUzBONks2bFVIVnhOYURQR0lSc1pOcCtvcU9x?=
 =?utf-8?B?K3RtVGZFL05rMG1vSTM0eDVMdkwwcHdVWXZPcnc5RitNT3U5Q3J0Wm5RTHdn?=
 =?utf-8?B?ZzVVZ0tUdXZOUHYvMnA5WFBsUmkwb1NVVUh5ZWZHQjc2KzNscSt1NFZFK0xW?=
 =?utf-8?B?VlVmS2ZvZXMyNlIvdmdwRDBjVUN0U3ptdVhLUEV5MEJWS2UxbGFVcFV5WGVB?=
 =?utf-8?B?WG9RVzk5Wjh5eitvaU1URWVIUWIvY3gyY2FHMDdBNDZEL2hrZlNUUkNGVkJ1?=
 =?utf-8?B?bnFFNlhPbzZGV2ZpdkRlOExxMnRRUFF6Z1ZtdSs3WmNDcmRJMHYzKzNmdExw?=
 =?utf-8?B?K25YRDBzMFcwWDRuTEUyc01RZFlQZHlCd0V0bmpDM3k1SHlOY3dYSWc1UHBD?=
 =?utf-8?B?MzJqVEN0RXBjWWRkd0Y4Tm5rdGg3RGJjZ0RCQnY3QjQ2dWJoZGNCT2xwdXRp?=
 =?utf-8?B?UHIySnF2Rm5PdXpJdGZmRWRBaUZKcE8rZG5XM2pVZnZDOUVWUEg4KzN6RGJD?=
 =?utf-8?B?azNWa2cxc1BVeGdpRWdCY2txL1FQaEtTbldxSlpsa2dIb0VyYVdXYVNKQ1V5?=
 =?utf-8?B?MnNjcWhFTGdzdEFLYUZOVVV0eE9QN2tlcklTaVlPbnNDbTJlOTMyaXF6RVZO?=
 =?utf-8?B?ak1uTVRTeGxDY2pGY296UklaZWpLOTFyTFZhTlYxTlg5cVpsMTNCVXNobm43?=
 =?utf-8?B?RXRlcFJhRi9tMDNndjN4azNxVHVDN0JFcFNLdnRSb2Z1MFJzTmtZbXdtNjNs?=
 =?utf-8?B?b01kNE9CZncrWm54aEdTR0JJcTlJdWsrQWlXM2Y2U2Z3by9aR3kwZkErL2lm?=
 =?utf-8?B?cG5iRmlOTWpjMG4wTjQ0bTNVTzJJR2FaWTZkTEp1Sy9oSFJVUFlwTm5TYi8z?=
 =?utf-8?B?aWJla0tQWC9XN0VsY1Z0L1ExcG1majhqUHRkR2JFendST1JZdzZrUUx0cDk4?=
 =?utf-8?Q?X9abC7k/aqoJ8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(39860400002)(376002)(366004)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(26005)(6486002)(6512007)(6506007)(83380400001)(2616005)(966005)(6666004)(4326008)(5660300002)(2906002)(8676002)(44832011)(66556008)(6916009)(316002)(41300700001)(66946007)(8936002)(66476007)(478600001)(31696002)(86362001)(36756003)(38100700002)(31686004)(99710200001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2s3eGZ3M1pCSmpOd3YwUzZJN3Zqd0c5akFYc20yakR2MHZNV2xISUhVbzJl?=
 =?utf-8?B?SytlWHNNWXF5cjdJZGVwUFRYNkM2V2hSTlAxUlpCdTMyaHU0U3A2ZFdCenVU?=
 =?utf-8?B?a2JaWGxEcHFOeEVuN3Z5WTZRRkxSdXptVTBpTDVFSll4WmdmUWFyaGxNWXA5?=
 =?utf-8?B?YWZ4MDZTMG4rdlI5cTdEZ24ra3FXZmV4TW1TbGJ5VXlqaWVheEtRdHFBSlVa?=
 =?utf-8?B?WjVuUzBIMkRLY01GNFBWdnVvSmtheGFWNVgyaE9IMmV0anl2MmlncUVSeVRk?=
 =?utf-8?B?WWl1UkxPTGdqSVRkMlA1Njh5dHJMYjZjT0xMZitVbzcyYlU1cXpZaVpGMXNM?=
 =?utf-8?B?NWp3SXdhK1QwK2pPbTZMSXpoMlVKQXJwOUpaZzl2TlhncVl4U3U5Tmh3anVO?=
 =?utf-8?B?eFp5MDhHd1dCYlNRcldYTktPc3R3RlVvSS81RGpCUUduaTJwK2ZIUDgwSnhD?=
 =?utf-8?B?ZVUva2xtckd4bTNRYkNrbGwrVG5OWjhiU0dET21KcDFBQWdaZ1dIT256c00r?=
 =?utf-8?B?alg4UHR3WXlGeDc3aHZiMU9wWVBqeGZFV3NRNmlLVHAyRy9Wamt5ZTQzTG1S?=
 =?utf-8?B?d1VoSkszcGZYVkQ4eVVDekdvTlZZbmIrdktvS0VmVXpqcDI3ejZpWHhldWF5?=
 =?utf-8?B?VEhUTzB2eEZVakFvak1lWUJRV0xPRG1kL2ZIclNlSUFodUFuSDc2c0pxOW9O?=
 =?utf-8?B?WVh0czM2TE1zYlI5M3ViS2pieGZQZmZwWWZnald0ejQzbUxnOVZ0MDVYcWtk?=
 =?utf-8?B?bm5GVjcxNC9MS1Jzdm5UN3dvWFd5NG82NTcyTWJ2OFRYc09pWVZydGhVblp3?=
 =?utf-8?B?TXdxWUlTcEl6WWJLaSs5MTFNMmNjUldrdjROdnN3M0wrNmhXbTE0cnUxOTg1?=
 =?utf-8?B?VVk1V3FLWUJrb1daaE1icy83K3Y3aHgweHJBeFBOVTFMWG9raDZMME9wSGVR?=
 =?utf-8?B?bXoreW5nMEtjRkZZQTI4WjJFcWR2eVEvT29sSHhsVDZvZWo3SldCcUEvSy9B?=
 =?utf-8?B?dlRiMHV2TEVrWERJSHRVQ3NIdzZsMkg1K2NydklWZFF3QWlMUHJXaW9oNkNn?=
 =?utf-8?B?azdwYXNINEJXZmlFNTVRK2c1Q0R2VmNaSnk5WXM0VUN2dWRnUWhvaHlWTEk2?=
 =?utf-8?B?WWRVU2c4eWh5bjNCYWphZG1GWmY1YWo3dUYzV2oraGZaR3lJeGxjSkpmV2lW?=
 =?utf-8?B?Z2tITUp1YklRQjRpblBkcGh4Vmd4dVUzaUo1clA0V0g2SERuWUZwc1N1UTBM?=
 =?utf-8?B?MTRHa1g4cHdROU1nU3JwRGdBVmgrc253TVBuODh4bVBDaG15Ry9Rbk5vSFJK?=
 =?utf-8?B?R2N1b1FmbWtvanc2TlE0cjlHbW9WYmhzWWpBczNidjF0STNaY3F4WG5WMGpK?=
 =?utf-8?B?VXVFbGR0Nyt4WlRuMGZleVhYSTNJekU1Z29KQ0lYZll3ak9CN3BwNGpBQjln?=
 =?utf-8?B?ak8xVmwzVGdoTkpkOExNSFpIOENabm93YUU4eW5xQzN4QUhaUVZXNHdyUS9W?=
 =?utf-8?B?TmxobHdRM0RVYUQyTWJtUWd4SGtORVg2VnY3bjVZNjZiM2NSbTFBeitWVXZr?=
 =?utf-8?B?OHNjRXE2TnNOcFdoN3ZnWkdQTzBWazY4aTVmVllteVpBSUE1MGhTbVVoYmds?=
 =?utf-8?B?SXNDbnVoOWo5T2FsUlFwbDQ3dFRydWcwQjVFcjBVRnpjRjh0Kzh1UmtQZkVR?=
 =?utf-8?B?R3FEaTg4elY1VUxRMnZaU1RSSExZYytzV3JHTmZYWWZzOEJwblFYMHlPUkVL?=
 =?utf-8?B?TmJvK0E4N2M3SFBqQkNCb01HZTR2eVVEREE2U0RsSHlWbVNZUExWSVBlbm9C?=
 =?utf-8?B?akRwdTA2eCs2emxITGdIZmpSS01mQmlWWjIwRDhyVGFuWlZsUDEvWUdHOE5j?=
 =?utf-8?B?YmxLWVpxYkMyRVNYdU12SGFRL1FHVDd2Q1FBTzJKMW5zbTlZNGdkOE55ZnpJ?=
 =?utf-8?B?K05qcGNzakxQam9KMTJxNUVSay9mTDEvTDdXVmhCak12T01tcklKclFqQzVC?=
 =?utf-8?B?WFlERElSdWNERzBPWXBoTkluelN5c0U1REVHQ0g0R29LQ21IL3RBemRVeXJN?=
 =?utf-8?B?dzIyWnVzNk8wdkpuK0thSEJWWEFPcW40UzVWTVF2eHVhMHhRR3cybzIzZENs?=
 =?utf-8?B?dXpjVW9PQTZFeG5rVkJkTUxHNmZLL01GL3NEYU0yaTF3WE1kMDd1QTZyRTQ0?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?V1gxMlVudXFVdmxlUmU5UXBCMmd0ZlBPY25QQjMrVFJzdDhHYUxBNHB1MmNS?=
 =?utf-8?B?S0Y5czlRSVVaVDFVK0xIdWpkMTR2aU16U0VBUk1JQW9qUHlOQk1CdWIrVVND?=
 =?utf-8?B?WUl2ZmY4L3ozNm11d1dyNndvQk1uNjh3cGY3MDRvcVpqTUpieEZzc3FqZ1dM?=
 =?utf-8?B?Zyt5T0szakVSSCtxT3VQR2lmSG8yTjNyem1GU0FLMDdGM0IvdlZNYzBhQWc4?=
 =?utf-8?B?cGgyTEF5UE1OQU5iRXpXMG0vdHcvb1dtaUM2YWh0M2U3alJDVGEzM2RsMlpP?=
 =?utf-8?B?VDFaYnBRWFY1SHh6Wi9DcHl4OE81NFNVYXNRT3RWWUxoNnFoTWFaNUIyN3FV?=
 =?utf-8?B?UnRxL0VVL1V5dGpIbFpEMTU5NDZDeWhuNjhNRFk2OC9wcFB1ZkplbldFZ29z?=
 =?utf-8?B?cGdxbEp5a29JQTExSlY5WmRNbGNHaUl6bE1CZXNuaHVQanhsalNUc0Ywd3B1?=
 =?utf-8?B?VkU4ZVRWYWdsQ0tHTWo2L2hRbFNaY1lRUEdSVE1HNnpacUNGS2tJdjJLSmpH?=
 =?utf-8?B?bWFveWR6dUFBL2RkYXlTQXA5R2l6S3E2WDlwMWJDZ2o2TEJHWFJEUVhSQW5s?=
 =?utf-8?B?WFd0azJSSlRyNVIvR25wWG9pQXJoMkZFYmV0RXpsS0s3eVozSjBXY0dIWHVh?=
 =?utf-8?B?bnpsWER4N0JYZnAvS1pEOURwbW14NW8rTFU5Ym1Ddmh4cUczMk5FOFU5dUtV?=
 =?utf-8?B?Y1c4R3NaVUNhSEY0TThWWmsxbXhPZkhkTDhSdVUwSmJva3Q2MVZSYzlSS3Bj?=
 =?utf-8?B?RlpWMzdmNER1RmpZazB3MFhtQ2FDanBlT0FnaHREeDZqNk5KM09sNnNSYUVn?=
 =?utf-8?B?c1ZIajJpRERHTHd5amFseGRBTllOL0p4Z2lSNEl1WDY3NEQ3b2hLUTY2VVRH?=
 =?utf-8?B?SnpZa09WQW5KTEdnUDl1dlRwT0x2QUtKdXBZVlJGMWhoUnM3aXZSdlRjOFNV?=
 =?utf-8?B?RWpCTks4RzkwUzJPdUJyTmJ1SnBTQUxhaTdic3dLWTU5TDUvM2lWUHNjOWYv?=
 =?utf-8?B?T25UeWlEOUlIalNycS9MQlprUGdDQ3J6L2srT0tNZU42b3IyMzh2bC9ZcmZJ?=
 =?utf-8?B?d3NLRUVvRjZDVXlmVkpGK1o4VWJTZisrVGRGcmlOWE5lMTEwK2FRVHlXVHBk?=
 =?utf-8?B?UUZVcXVpZXo2TjNIR2k0SzluZ1hQOEVLaUNPcW9WRTdCaEtRSnp1c29EUkRJ?=
 =?utf-8?B?ZjkvenpEY2V1TElBY2VGSk4vRHdSK1Z4dGZJYTVmRHE0OFBEWTVYamZpQTVX?=
 =?utf-8?B?ZFJWTlJVMllNVHNNNWMwM2ErZ0tOcmZ5S1dqQ0sveko4YmhWSlpnb2pHY0hD?=
 =?utf-8?Q?XOiie/g8aBpKY=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5e383a-f625-491b-1083-08dbc4e560fd
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 14:22:46.0244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gqMqNIr5Z3Ng8Ddr+7+F3qW7NiCAPgJH/jat/ZPmJMCL9LfI4p9VB2Lx+zmyl9VF0CQagqx7XN3XhPVP90wkoYpu0kpJ698QCJeE+pQJ5yM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7301
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_06,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 bulkscore=0
 adultscore=0 mlxlogscore=970 phishscore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310040104
X-Proofpoint-GUID: DOlYMkqsc7GfS_X2c2PHBu8sngfpGyb1
X-Proofpoint-ORIG-GUID: DOlYMkqsc7GfS_X2c2PHBu8sngfpGyb1
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/4/23 12:47AM, Manas Ghandat wrote: > Currently while
 searching for dmtree_t for sufficient free blocks there > is an array out
 of bounds while getting element in tp->dm_stree. To add > the requi [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qo2mA-0002WF-6E
Subject: Re: [Jfs-discussion] [PATCH v3] jfs: fix array-index-out-of-bounds
 in dbFindLeaf
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
Cc: jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/4/23 12:47AM, Manas Ghandat wrote:
> Currently while searching for dmtree_t for sufficient free blocks there
> is an array out of bounds while getting element in tp->dm_stree. To add
> the required check for out of bound we first need to determine the type
> of dmtree. Thus added an extra parameter to dbFindLeaf so that the type
> of tree can be determined and the required check can be applied.

Applied to jfs-next

Thanks,
Shaggy

> 
> Reported-by: syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=aea1ad91e854d0a83e04
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
> V2 -> V3: Changed the argument name from type to is_ctl
> V1 -> V2: Updated dbFindLeaf function.
> 
>   fs/jfs/jfs_dmap.c | 14 ++++++++++----
>   1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index a14a0f18a4c4..d2a4fced8976 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -87,7 +87,7 @@ static int dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno,
>   static int dbExtend(struct inode *ip, s64 blkno, s64 nblocks, s64 addnblocks);
>   static int dbFindBits(u32 word, int l2nb);
>   static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno);
> -static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx);
> +static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl);
>   static int dbFreeBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
>   		      int nblocks);
>   static int dbFreeDmap(struct bmap * bmp, struct dmap * dp, s64 blkno,
> @@ -1709,7 +1709,7 @@ static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno)
>   		 * dbFindLeaf() returns the index of the leaf at which
>   		 * free space was found.
>   		 */
> -		rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx);
> +		rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx, true);
>   
>   		/* release the buffer.
>   		 */
> @@ -1956,7 +1956,7 @@ dbAllocDmapLev(struct bmap * bmp,
>   	 * free space.  if sufficient free space is found, dbFindLeaf()
>   	 * returns the index of the leaf at which free space was found.
>   	 */
> -	if (dbFindLeaf((dmtree_t *) & dp->tree, l2nb, &leafidx))
> +	if (dbFindLeaf((dmtree_t *) &dp->tree, l2nb, &leafidx, false))
>   		return -ENOSPC;
>   
>   	if (leafidx < 0)
> @@ -2920,14 +2920,18 @@ static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
>    *	leafidx	- return pointer to be set to the index of the leaf
>    *		  describing at least l2nb free blocks if sufficient
>    *		  free blocks are found.
> + *	is_ctl	- determines if the tree is of type ctl
>    *
>    * RETURN VALUES:
>    *	0	- success
>    *	-ENOSPC	- insufficient free blocks.
>    */
> -static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
> +static int dbFindLeaf(dmtree_t *tp, int l2nb, int *leafidx, bool is_ctl)
>   {
>   	int ti, n = 0, k, x = 0;
> +	int max_size;
> +
> +	max_size = is_ctl ? CTLTREESIZE : TREESIZE;
>   
>   	/* first check the root of the tree to see if there is
>   	 * sufficient free space.
> @@ -2948,6 +2952,8 @@ static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
>   			/* sufficient free space found.  move to the next
>   			 * level (or quit if this is the last level).
>   			 */
> +			if (x + n > max_size)
> +				return -ENOSPC;
>   			if (l2nb <= tp->dmt_stree[x + n])
>   				break;
>   		}


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
