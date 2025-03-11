Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C10DEA5CB20
	for <lists+jfs-discussion@lfdr.de>; Tue, 11 Mar 2025 17:50:06 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ts2nI-00019K-4A;
	Tue, 11 Mar 2025 16:49:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1ts2nG-00019B-CM
 for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 16:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9P+Ecr5UCdHOH0NxBHd1dR4rloeVXWZTRJ4ZdmVi0ug=; b=XHVaECaGDaa946uSTzwa40KIjK
 CzINHwCUUkPWJhHno6ScjcOSAV+nTDEWhW1pBBotkDfeBClB4VsvTa2eFAigZ3ShSxB/qu8esMLbP
 zcRdFpJGvRmUHeTXBWzGuruQAH7Nuo9R6zKkB+GHopk4fFn9k57SoZEW4vak2gCAhh5E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9P+Ecr5UCdHOH0NxBHd1dR4rloeVXWZTRJ4ZdmVi0ug=; b=iA8SdXoG1AgrS+iDW4/wn6eZA7
 AKYDAKbh400cczG18lqWwwZ/Nv8uzT3DzBvP1BA9NzVUvNCYP/g1WJyiOxcZjm51VMjF5trh2gTDd
 AX02ViLPluhehMHV6uIdzDk4HhQg/cbNtg+oxJZ+Tt4LTtIgC+13tKqi55R3D+i3Tk2I=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ts2n5-00045E-DS for jfs-discussion@lists.sourceforge.net;
 Tue, 11 Mar 2025 16:49:26 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52BGQmE0004069;
 Tue, 11 Mar 2025 16:49:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
 :content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=
 corp-2023-11-20; bh=9P+Ecr5UCdHOH0NxBHd1dR4rloeVXWZTRJ4ZdmVi0ug=; b=
 d/LkO+RQkmi7lZDU+mL8+2QXQv8oB4Ly4a6T6xGuuB2yw/QoeZkW1NVmG4lO+k5B
 AoDiF93RQx432ubQLZhZTuTv4mCoYZNZLib1SQlRxzWcbTyEg71/3UpaNE7hfulB
 Y54fSsBR9cB/y6bld5/+MZOsD7KIdEimDsXEpQWl6L/BA6qCjlO1VRvUDe/D5JBT
 zIsvQlZVpInsKulT7iwDs5nXkiaQIX7J7+mEvAJLFKCtnti6U/KW8jtx8fgJ8ugp
 M+uf4o9teaI3CIn2YhwhMw+iAvrtS9KaclV0Rfl+S1tOi+Xu1bLnnrdvqRaSAsWi
 MZIXYg6Jhf6SiHOZfJkf2g==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 458dgt59fd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Mar 2025 16:49:08 +0000 (GMT)
Received: from pps.filterd
 (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2)
 with ESMTP id 52BFwsMp030600; Tue, 11 Mar 2025 16:49:07 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2176.outbound.protection.outlook.com [104.47.57.176])
 by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 458gcnne53-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Mar 2025 16:49:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d1T66KoObK4Cpn0uRLHuyO8A+fU5+IhgGqWqf0apUr2+nGx/ZmEAdDfYkzUQQTcaBH8yDBID73STgWu9T/9cwaWN1fgjSWQd1HkBCR/AAtGuuO+NZmfn+R4cCBUwy70CCubJwcBtsYfQQr0PsybBc0StrHwjOEMGO3cpAOtNDXJ9AVnNWZ89FDXAyIaJ6VrgyKvwDNcYu+dvaVGuIQhqocBvaIjdDjdESFSZNU2UE6AtUUenJ3ttf1fcsHmqGhryiDgiNpWdlLS7f/5L2so4+vUw6bSSGpE1ZKoUuD7auTFZEANmFjHCp4MVqDTWS7mBc/uV74ckHekUSGaHcHibuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9P+Ecr5UCdHOH0NxBHd1dR4rloeVXWZTRJ4ZdmVi0ug=;
 b=C0iOWEJ2fRxLrjBubVly2sf7eD1QSW/N0rS4mRi664y2ZSpE4kE7afuEDfAnkvAru6DQR/eOTL4c/oiyfBFoxJvRoch4IkapFo3lp5YsgRgoox6RjN3iwoQSfGCng6iuCanokcYZCRbpi/G4Zst45/w2Ejrt4yRFqc4P779JFTFXEdNlLFxhQCn/a2r1H9UDaOPXGXzcCTwEn5vj0fGdB8b51LUTQ51rSLnB6DBbo7yVr1FIAluWtnoxddGybL2/ijQfnBlAAb0zgJUfoJT/G+1NHYTCtTu/KvVEQ95GXILZTYKTp/7iZkd8bFULUyTzA91ZsEysOT67I5kxDTIzsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9P+Ecr5UCdHOH0NxBHd1dR4rloeVXWZTRJ4ZdmVi0ug=;
 b=Frbe28wdL0U192Ld7RpaSY9dV46IUrJ0y2E/IXVql9h9t+ESn5HBrBzjluiKnlULNftTY2l9+77uCFZvlPZ/KmmL8y5z6nnzs9o7qKU2Q0UUvS/3pWARZVq1Le8igfWGnDPKJ+PLW+17Zg88JqW5hzAuEOQVyTGmF7Q4gEpN0+Y=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SJ1PR10MB6001.namprd10.prod.outlook.com (2603:10b6:a03:488::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 16:49:04 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::187b:b241:398b:50eb%5]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 16:49:04 +0000
Message-ID: <e495bf9c-9fba-44ce-99fe-04879f8dd0c2@oracle.com>
Date: Tue, 11 Mar 2025 11:49:01 -0500
User-Agent: Mozilla Thunderbird
To: Suchit Karunakaran <suchitkarunakaran@gmail.com>,
 jfs-discussion@lists.sourceforge.net
References: <20250302191558.47180-1-suchitkarunakaran@gmail.com>
Content-Language: en-US
In-Reply-To: <20250302191558.47180-1-suchitkarunakaran@gmail.com>
X-ClientProxiedBy: CH0P223CA0020.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:610:116::10) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|SJ1PR10MB6001:EE_
X-MS-Office365-Filtering-Correlation-Id: d27c5998-fbe9-4e46-fbcd-08dd60bca1b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qi96TitSeGJtWUQyOGk1QVplL0hlL3d0K0xxVFU5eEVYcDFncERJaUdmMkpZ?=
 =?utf-8?B?eG5uZGNmMHQ3REVySDZqaEhiN1JiV1R3SngzVnU5Y3Y0QjR3YW9XYjkzYkkv?=
 =?utf-8?B?K09TR2ZzSGxZT1pBWE1qeWFvaTBJa1hReXhOWXRsQUJVd2pBc0laKzVPcHcy?=
 =?utf-8?B?S3V1VXdLYXRDbC9SUyttQmlVVklORmJrTXpFa2t4RkJHdkJrZUtld09JR0Nr?=
 =?utf-8?B?RGRPbng0UG9KcWlCeFM0anQyckllU1RWUW9iUUp2cDNaWi9zbFJnT2tmM2g0?=
 =?utf-8?B?VHZYcDJwaHNKVmE1S1VNTWpsdjNYaDlTbXB0eEZxdEZ3MCs5ZEo3UlJUb0hO?=
 =?utf-8?B?Z0ZlTVN6bmFHV3Zwc1Ura25ZNXFTcGw1WGIzNnJUUVFrTUJqNGlFcUVUSldD?=
 =?utf-8?B?YnJOUGlJbzY2NXMyNEdOSlhDTXZISjBwYWhpZEhpUk05b0hOaHlSNHM2c1N6?=
 =?utf-8?B?OVNNWWg5SHRhMk85MU5DYkVLaEpvQzNMc3pWQVprZGhVSExtU01xWkdwNlBI?=
 =?utf-8?B?RnM3d3ZSakNscm9NZWlYVlM2OTBvNHVuS2ZiT0RiUllISTlPeFo2UFFWdmZT?=
 =?utf-8?B?VVNuNGJKbE1OandaY1IvS2dNT0dIYTVVWHhDaEUySnMrU0ZScmMwVlZRa3lU?=
 =?utf-8?B?MjN2dll2dnk2MUROZEFZekxqR0k5WFg4cnExb0RJZWcvOU1pUWQrdlVtNlNz?=
 =?utf-8?B?MTJ0SUh4WDFMWHI2dVgyMnpjOGRmTDNvZmpvQktDam9YVkIwMDJYVTBpbkhm?=
 =?utf-8?B?VmFTa0tqaDdsLy83QTcrSk1ORWl5alRSdkt1S1d0eEJhTkZEUUxTQ0JqUXVq?=
 =?utf-8?B?YUpabmhGKzNmWVBhTkY1M3hnZTVPaXRRVW5XY3ZwWHVUdnpyVElzNCtnSGhh?=
 =?utf-8?B?MGhTTGFaa1NoTm5TVzM0dVpLQ0xNSk95Ry8vNFpuajRkWTAvdlc4bkVPaUhU?=
 =?utf-8?B?Z0VjTCtJaHVjSmVJWjVoODd3VWM2N25VRENHaDlOejRPTnpzUXp0S0ozZEU4?=
 =?utf-8?B?N240eWNIWDlYSStpcVNGcTJjVTdjV1Y3RkhBeHFrcGVVelY1N0EzeENnQmlF?=
 =?utf-8?B?eUNPaE1sK3hodUpXOVIwOHp3RURHVysvc3U3TmI4dDFqWGxsaXFGaEJFc2Z0?=
 =?utf-8?B?RVQvUXlrMm5mVFM5aDJKUXllS1VuUW1LUjFHeFM0d2xJU2hMMnY5S21MZzZy?=
 =?utf-8?B?encwNkdWSnRkZmE0emdUU1hjbDhQWlZBRmY2dVZPeVJxNzBzYThQZ3o4K2Ez?=
 =?utf-8?B?L3JJMTZjMkUzTGVsdFhINkREajdhVU5nZVlsSGJsQlRSR2hjNUN3OVBvOFJj?=
 =?utf-8?B?amVIeHhQU29SREdRMFpId004azduWjhUbmRDYWFkd2QweW1OVlhyai9RdE1B?=
 =?utf-8?B?NC9EdGFBSU5iZGZTb1N5Zlo3UG1BWHdsdWVqckQ5aWNpeHdhTHVxYjhYV0Iz?=
 =?utf-8?B?dTQvL3JUK0o2SzFXeWU1OStkd2pMQmpmSWZUWkYxdkxDaHcxWGxackkyRTBn?=
 =?utf-8?B?SWl4dUQ1bnJFKytDT1UycU9sT1ViNzZGQVFHMTFhT3hIRFQ0ZGQydnMwbmw4?=
 =?utf-8?B?cEpZbzFqd3dmN0lrQ0x1SkZzTU55eG1uMGg2cjN1azRuaTJMUUVBNUoxV3Q3?=
 =?utf-8?B?Zko4N1JLb0dObTQxTzBKNmoweXRuUjJBZkp4SWJFeHdBMy9Bc2ZncDJ6K3p2?=
 =?utf-8?B?THYvN0l0b1VHc3lQd2w2Vk9vbWRqdDRYYVNHdUFERGp2YjFIYzIxdmZMdnJ3?=
 =?utf-8?B?KzBDbWhyYjBGNDEzdldlR1U5V3ZFTEtudE5PZjR5OVJVZ3h4b0ZXTFhsZDhG?=
 =?utf-8?B?ckVsTmlhTkpybmR2cllpdE9FbXpWU0dJZEZKSG9FdmFzYmtRRWltenBUdEh3?=
 =?utf-8?Q?olr4PWggP18DO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0xFSERYaktwYVRCWEgzSDRqQnJ0QkRiUUU1L0hrdWIzWEpZS0lFQXhNazBP?=
 =?utf-8?B?ZFMwMUlDbmcyY1lNRUgwRW96YmFmRkNFUU5hd1Y1MUZ5WXVhZy9pYVM4M3U0?=
 =?utf-8?B?OHUxUGlCMkpneGR3aldJSUpsTFZycmZwaUZ2OTNoTkVSR1htSTVKUzBCcmpW?=
 =?utf-8?B?Tlp2UC9CZkFXOFZWbzF6U3k1QVJFY2wzdUkvUjREYjhlcTZzUWZLd0lpYTl6?=
 =?utf-8?B?THF1UW5ORTUzSW1NKzMvd3BxQmd6Y1VQL1REQ3BZZWxHQ1piR1lxeWNKT1I5?=
 =?utf-8?B?TzgvNjRXNFhtQ2lueTh6Y1FvTEowdjRZbm4wYlNJMkt5TmZveGltaHBmTGlO?=
 =?utf-8?B?Qjd2dnQ3aDg5T1FLY0l3TkthYm5JUU5NeXg0NENZMjk5MU1QTGVFQ2NRQkZp?=
 =?utf-8?B?WXJlWFpNYXh1WFloMWthNXBPMVFJL0FiSTlzTzRCTnJBZFFaUlkyZ2t2SDhB?=
 =?utf-8?B?QzVtUnFsZGEwR2F5UHhJNjkwR2QvUzVVbXcyTDZnb0NNVlpGT0czY3M5elZj?=
 =?utf-8?B?eTdaWDB0ek9jNElBbnB6c2dLN0FPd29HempqLzl5UDNBSy8xVmF1dDRDVVBI?=
 =?utf-8?B?TzVuWVpqVG5ncjNuMTFpUy9GM3hkSTVoRzcvWWdBb3ZPVU10ZmZ0NWRmZEFo?=
 =?utf-8?B?bGZzK3hJL2dHc1VoZWxNZitYYVpmZWVBN2cxa3dRL1NRTWFYbzVXQU5BSlJ0?=
 =?utf-8?B?VVJsNlA1UGJkT3ZDL0c2eEhSRDRnZEd0b1djTUxvczFGZ0w4VURkbW5Nc1No?=
 =?utf-8?B?UEJ2SW11cVBydGhUR3dEU3pwMnVTMWJXSnZweldVUXQrS3BiclArOWlFS0l0?=
 =?utf-8?B?L25WejFUVm1WcUJTcjhuT0xvSEZJdmt1NCttVGZ6T2ljUnBzMWhPNXFRMGpx?=
 =?utf-8?B?NkcwOW4vdW9raEdoR1JnWmErR1hkU2ZtUFlVUDgyb21hcFMvS1d0UWZ2R25l?=
 =?utf-8?B?Ymp0WmNkeUVVMmVMeWVoYjJCZUF2ZGwwY2dGTStyVS9oaklBSUJnaE1XVXNX?=
 =?utf-8?B?WWpZTnVVYzFBckNnK1Jra0hIOCtjSGJHMWxqV2xhKzVxcG5yVjdxbGhEQ3Nw?=
 =?utf-8?B?S1BrYmNrdVpISHJvVFdrZGQvWWZsTjQvUjdZMUxqNU5TSTNzY3lkTEQyS1RS?=
 =?utf-8?B?S3dsdmNuZVdFdDRwcW5TMWR5eXl6VzJaa1VlaXZvUnZaV3c0YnNPWlFua2hY?=
 =?utf-8?B?K01wUDNoemVUOVdXTXVMTWdQbnZaenJCNngxMW9EdER4RnVJMmlXc3NmcFBG?=
 =?utf-8?B?a3p5TytvVHVSdU9LK2k2RGp4U2wvNW9pN2diamgwRTQ3S0RWbFBkdVNqbEZQ?=
 =?utf-8?B?aUtveDJoNTJzczhaaTAyM09nejdsN2xJLzd1VUJDT3g2QlZoaHgxNHVFelFI?=
 =?utf-8?B?NFdtMTAydWhtSmpxdGZKbldmK3lYTjREUFRBWmZZL1ZtNjdRSGVyT0pvcG45?=
 =?utf-8?B?OUJGbWRQT000R1RJY2l5NlRHY255NzZhYVpUVHQrRnhJcFRsL0p1VzNPWncw?=
 =?utf-8?B?V3hNU0c2eExtNVJzV29lT1BUU1N2TWpsSksxbnJaRHdDRlFqdXU1eEM2V09W?=
 =?utf-8?B?a1lyd0ZZbzIvSE5GK0dhc2dQaDlwRlEwbnRNK0UvV0EyVnJDc3lKZTZjSjg5?=
 =?utf-8?B?cU9IMWRIc2l4UnE0MjZLZnd6YWg2MkgyVnAyS0dQcjMrenVDcnNWQWpuMTgw?=
 =?utf-8?B?TWNQWldjVWZFUExCNUtsYnRyY1ROK3FXTm5oTEo5ZVJzTjFUczNHK0NEYlpK?=
 =?utf-8?B?N2ZaTVdpSmQ2Ykd0LzVEbEVFOEtING8wNnVSTGEzalpROEtZK1lmRWRnQmRF?=
 =?utf-8?B?bjhzakZRdktRR2VyU3ByQXNwUEZ0Q0I2bXZxaEJRbDhZNUJoVGVpRTlwY2Jo?=
 =?utf-8?B?NksveS9RcTVxVWsrTCtlbUl0d2NQcnpxMHdHOE5Yajh5SjFsVmROZlBMQkJa?=
 =?utf-8?B?MCtJZG9DVVlvZENqamhrRkZBbjB5NG00eW5DeTd5ZVFCUk1hUzlZQ3NOcDhh?=
 =?utf-8?B?ZTVCTGF2TFp1dEphbGQvdWt2U3dyVVQ4UHhubnZXT0ZzdElDYjYxN2RFSTc2?=
 =?utf-8?B?K3BoV2MrZHBleHZkbENHK1BIWFRKaWs0ekNtOHh3T0haV29heTJCamVFSktm?=
 =?utf-8?B?anVhdEdVQmxvRmFQY00xN0IrYSttait3bC9id2V5RnZib2NUODFaTkFpdTgr?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: /JmgSRcK2Iwbg3p788W+vigONmM67gfRP2NMyL01V5KAfyTT/e4FcOQO1v0h+EPQ6/RSQ0cOORJyQT0vIwxFSw3o/GwBpWNTvlYXTt8kxYFOrf+LevBT78xdgVuBhZr3iaGWo6JfH/TVXj1VfEg6iU0wWIfsdN+zux7y5C4XAiSmFgWpgnrsQoOUFYMOvkwU67RZFZMHnREWuvDpMhWU1Ee8Dh7rpSyQHITJQLL7ezcg6vqIsqveHosOXzctYx0GKRu05lPL3XUsTAa5Y6rK80Zr0iOseRJhvNsDc4llibOueaSEpUNjHui2ZM9a78SO0du/UerVozemPXkpNIXpRbY2+EQlPDZIRGKCEUfRv/DtiJLwdwY7lOBDe2n732Melv+zlPW3wgXg23Wd390sJfYjUVQvJTX8RrVqM9nGAJZjvSlJ+oiGl4nwAptoJJz5Mdyg3i9fsKHNbq/7Zzqy6KldWT2s9QNCrCJX0uuG07/EKxj6CZEQV1If6+DCt2qW5vXCSaceN/JFIwQACEkjn6Af7ZO6Kd8OhVMdcE6TUBJRMwP9TZYbtZrpvouBYKzv2shIoEXSs8Y1enkmxtI8gx2LxMcMbWGl+TVl/olnaiA=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d27c5998-fbe9-4e46-fbcd-08dd60bca1b7
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 16:49:04.2402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FnZfB4VY7QW9NhLXRGLyYTitdP0YGumf2yAq+mOplYIVTemOBdOc8ZmFh1BMVLXrpTXuwg4T3na3u/LQjnQL1uZnPKTYSO2mPwmkAQ65Gt8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR10MB6001
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_04,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 phishscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2502100000
 definitions=main-2503110106
X-Proofpoint-GUID: Y7CnToO662MMlWmJl0NFWKAJZ5fWelPA
X-Proofpoint-ORIG-GUID: Y7CnToO662MMlWmJl0NFWKAJZ5fWelPA
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/2/25 1:15PM, Suchit Karunakaran wrote: > Replace legacy
 XT_GETPAGE macro with an inline function and update all > instances of
 XT_GETPAGE
 in jfs_xtree.c file to use the new function. I like the idea, but as long
 as we are changing this to a function, I'd like to simplify it to return
 the xtpage (xtpage_t *). A NULL return would indicate a failure. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [205.220.177.32 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ts2n5-00045E-DS
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
Cc: linux-kernel@vger.kernel.org, skhan@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 3/2/25 1:15PM, Suchit Karunakaran wrote:
> Replace legacy XT_GETPAGE macro with an inline function and update all
> instances of XT_GETPAGE in jfs_xtree.c file to use the new function.

I like the idea, but as long as we are changing this to a function, I'd 
like to simplify it to return the xtpage (xtpage_t *). A NULL return 
would indicate a failure.

Also, the first argument should just be "struct inode *ip". That should 
eliminate your second patch.
  >
> Signed-off-by: Suchit Karunakaran <suchitkarunakaran@gmail.com>
> ---
>   fs/jfs/jfs_xtree.c | 86 ++++++++++++++++++++++++++++------------------
>   1 file changed, 52 insertions(+), 34 deletions(-)
> 
> diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
> index 5ee618d17e77..fb736a06ea58 100644
> --- a/fs/jfs/jfs_xtree.c
> +++ b/fs/jfs/jfs_xtree.c
> @@ -49,26 +49,6 @@
>   
>   #define XT_PAGE(IP, MP) BT_PAGE(IP, MP, xtpage_t, i_xtroot)
>   
> -/* get page buffer for specified block address */
> -/* ToDo: Replace this ugly macro with a function */
> -#define XT_GETPAGE(IP, BN, MP, SIZE, P, RC)				\
> -do {									\
> -	BT_GETPAGE(IP, BN, MP, xtpage_t, SIZE, P, RC, i_xtroot);	\
> -	if (!(RC)) {							\
> -		if ((le16_to_cpu((P)->header.nextindex) < XTENTRYSTART) || \
> -		    (le16_to_cpu((P)->header.nextindex) >		\
> -		     le16_to_cpu((P)->header.maxentry)) ||		\
> -		    (le16_to_cpu((P)->header.maxentry) >		\
> -		     (((BN) == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) { \
> -			jfs_error((IP)->i_sb,				\
> -				  "XT_GETPAGE: xtree page corrupt\n");	\
> -			BT_PUTPAGE(MP);					\
> -			MP = NULL;					\
> -			RC = -EIO;					\
> -		}							\
> -	}								\
> -} while (0)
> -
>   /* for consistency */
>   #define XT_PUTPAGE(MP) BT_PUTPAGE(MP)
>   
> @@ -114,6 +94,44 @@ static int xtSplitPage(tid_t tid, struct inode *ip, struct xtsplit * split,
>   static int xtSplitRoot(tid_t tid, struct inode *ip,
>   		       struct xtsplit * split, struct metapage ** rmpp);
>   
> +/*
> + *	xt_getpage()
> + *
> + * function:	get the page buffer for a specified block address.
> + *
> + * parameters:
> + *	ip      - pointer to the inode
> + *	bn      - block number (s64) of the xtree page to be retrieved;
> + *	mp      - pointer to a metapage pointer where the page buffer is returned;
> + *	size    - size parameter to pass to BT_GETPAGE;
> + *	p       - pointer to an xtpage_t pointer mapping the page's data.
> + *
> + * returns:
> + *	0 on success, or -EIO if the page is corrupt or an error occurs.
> + */
> +
> +static inline int xt_getpage(struct inode **ip, s64 bn, struct metapage **mp,
> +			unsigned int size, xtpage_t **p)
> +{
> +	int rc;
> +
> +	BT_GETPAGE(ip, bn, *mp, xtpage_t, size, *p, rc, i_xtroot);
> +
> +	if (!rc) {
> +		if ((le16_to_cpu((*p)->header.nextindex) < XTENTRYSTART) ||
> +			(le16_to_cpu((*p)->header.nextindex) >
> +				le16_to_cpu((*p)->header.maxentry)) ||
> +			(le16_to_cpu((*p)->header.maxentry) >
> +				((bn == 0) ? XTROOTMAXSLOT : PSIZE >> L2XTSLOTSIZE))) {
> +			jfs_error(ip->i_sb, "xt_getpage: xtree page corrupt\n");
> +			BT_PUTPAGE(*mp);
> +			*mp = NULL;
> +			rc = -EIO;
> +		}
> +	}
> +	return rc;
> +}
> +
>   /*
>    *	xtLookup()
>    *
> @@ -252,7 +270,7 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
>   	 */
>   	for (bn = 0;;) {
>   		/* get/pin the page to search */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   		if (rc)
>   			return rc;
>   
> @@ -807,7 +825,7 @@ xtSplitUp(tid_t tid,
>   		 * insert router entry in parent for new right child page <rp>
>   		 */
>   		/* get/pin the parent page <sp> */
> -		XT_GETPAGE(ip, parent->bn, smp, PSIZE, sp, rc);
> +		rc = xt_getpage(ip, parent->bn, &smp, PSIZE, &sp);
>   		if (rc) {
>   			XT_PUTPAGE(rcmp);
>   			return rc;
> @@ -1062,7 +1080,7 @@ xtSplitPage(tid_t tid, struct inode *ip,
>   	 * update previous pointer of old next/right page of <sp>
>   	 */
>   	if (nextbn != 0) {
> -		XT_GETPAGE(ip, nextbn, mp, PSIZE, p, rc);
> +		rc = xt_getpage(ip, nextbn, &mp, PSIZE, &p);
>   		if (rc) {
>   			XT_PUTPAGE(rmp);
>   			goto clean_up;
> @@ -1417,7 +1435,7 @@ int xtExtend(tid_t tid,		/* transaction id */
>   			return rc;
>   
>   		/* get back old page */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   		if (rc)
>   			return rc;
>   		/*
> @@ -1433,7 +1451,7 @@ int xtExtend(tid_t tid,		/* transaction id */
>   			XT_PUTPAGE(mp);
>   
>   			/* get new child page */
> -			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   			if (rc)
>   				return rc;
>   
> @@ -1711,7 +1729,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
>   			return rc;
>   
>   		/* get back old page */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   		if (rc)
>   			return rc;
>   		/*
> @@ -1727,7 +1745,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
>   			XT_PUTPAGE(mp);
>   
>   			/* get new child page */
> -			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   			if (rc)
>   				return rc;
>   
> @@ -1788,7 +1806,7 @@ int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
>   		XT_PUTPAGE(mp);
>   
>   		/* get new right page */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   		if (rc)
>   			return rc;
>   
> @@ -1864,7 +1882,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
>   			return rc;
>   
>   		/* get back old page */
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   		if (rc)
>   			return rc;
>   
> @@ -1881,7 +1899,7 @@ printf("xtUpdate.updateLeft.split p:0x%p\n", p);
>   			XT_PUTPAGE(mp);
>   
>   			/* get new child page */
> -			XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +			rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   			if (rc)
>   				return rc;
>   
> @@ -2268,7 +2286,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
>   	 * first access of each page:
>   	 */
>         getPage:
> -	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   	if (rc)
>   		return rc;
>   
> @@ -2506,7 +2524,7 @@ s64 xtTruncate(tid_t tid, struct inode *ip, s64 newsize, int flag)
>   
>   	/* get back the parent page */
>   	bn = parent->bn;
> -	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   	if (rc)
>   		return rc;
>   
> @@ -2791,7 +2809,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
>   		 * first access of each page:
>   		 */
>         getPage:
> -		XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +		rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   		if (rc)
>   			return rc;
>   
> @@ -2836,7 +2854,7 @@ s64 xtTruncate_pmap(tid_t tid, struct inode *ip, s64 committed_size)
>   
>   	/* get back the parent page */
>   	bn = parent->bn;
> -	XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
> +	rc = xt_getpage(ip, bn, &mp, PSIZE, &p);
>   	if (rc)
>   		return rc;
>   



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
