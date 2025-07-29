Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B9EB14E4F
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Jul 2025 15:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9N4sAMeRFWqbwWBQXbKpJ7IhE2Hk1VTp0UrtSpLNyRo=; b=bxpDeQh/o9gk8KiZ7RTWBi+40p
	UoP/I5TvCQL/OpYZNipndV816x6rZ3AC0pZ4dKP9WaBrTezmjVYLDUqtBywObMreJhZq8UUSBp/+v
	CIX25QStTIPiP1rbuqEyL3g4D7h3JGUryx0455sMDjI4hbA7KG49kC9+OpRahvUsg8F8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ugkJb-0007En-9a;
	Tue, 29 Jul 2025 13:24:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zheng.yu@northwestern.edu>) id 1ugZMr-0003wa-09
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Jul 2025 01:43:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ikSir2NsMxvFO1NrWrgjWtVpcnZixkbr5m7gQw4NiC4=; b=NmOA6nYbq21lPHXO0Sp2ASfTaf
 9Iman+4Fo0ySSdGQqB9fKBDq/eYyXuLznu7sxYfgaTgVZCnl8OPFIJ2K9gnWak8RzmQZgggVfldRB
 2gXNRKJu08Q9aL+WN382WCrdm+lGbLWSy/nvQwO5/vkZj1aqvHIlIzCKfzpLIafVV7Q4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ikSir2NsMxvFO1NrWrgjWtVpcnZixkbr5m7gQw4NiC4=; b=k
 2qxzsr8/v1/s0Ipp1C6pYPNZOV3Oy4tHaBvWk0dk74xx/tOWSBB6KB5brB+t8U/l1gNfQxG/aPzui
 c+721/CC0RJUFHb2ZqLKjjnFrqI1Ddb9PnqINjiuXAJBqro1O+R3wiB7WoM/20Wo6I45c58TlDFQj
 MhGoGvhi2blaIdCw=;
Received: from evcspprf10.ads.northwestern.edu ([165.124.82.241])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ugZMq-0007Qu-V6 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Jul 2025 01:43:01 +0000
Received: from pps.filterd (evcspprf10.ads.northwestern.edu [127.0.0.1])
 by evcspprf10.ads.northwestern.edu (8.18.1.2/8.18.1.2) with ESMTP id
 56T0uvMX028541; Mon, 28 Jul 2025 20:22:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=northwestern.edu;
 h=cc :
 content-transfer-encoding : content-type : date : from : message-id :
 mime-version : subject : to; s=proofpoint;
 bh=ikSir2NsMxvFO1NrWrgjWtVpcnZixkbr5m7gQw4NiC4=;
 b=dcvTZ/+hMOi254oF/9a/YrD7hbnpn0wLxg18ndo3rmzYZbFmm3wb8G9KroMPbMD/6PEG
 FXs7IYzf9H2c6vO5jylc+oMSurFmQtzws7gPF0lK33lE3o7mdQvcpMqeNwb2WZ3GHfSo
 CYwLV/rnUtdpgIDdm9J3hKDUYxP8zJFT3C34/vgqptPjfGLxH8Nb9epocbcsZg/Q8Lw9
 aK50IByLJy92Z6zRxJ+G0WXhwWRlrrVgyi9QuJWBDWU2nu08Rn6n0uOZDYP/j+hsltTU
 WucC1yVA+RZ3s5HQA7AfWQIrFC9mjdq2TWkR+lgjqat6ZtKYyye2tSnnDjjTDToeHJnH 6Q== 
Received: from pps.reinject (localhost [127.0.0.1])
 by evcspprf10.ads.northwestern.edu (PPS) with ESMTPS id 485d75dsbq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 28 Jul 2025 20:22:17 -0500
Received: from evcspprf10.ads.northwestern.edu
 (evcspprf10.ads.northwestern.edu [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56T1MHjv020439;
 Mon, 28 Jul 2025 20:22:17 -0500
Received: from evcspexch02.ads.northwestern.edu
 (evcspexch02.ads.northwestern.edu [165.124.43.180])
 by evcspprf10.ads.northwestern.edu (PPS) with ESMTPS id 485d75dsbn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 28 Jul 2025 20:22:17 -0500
Received: from EVCSPEXCH01.ads.northwestern.edu (165.124.43.179) by
 EVCSPEXCH02.ads.northwestern.edu (165.124.43.180) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Mon, 28 Jul 2025 20:22:16 -0500
Received: from DM2PR04CU003.outbound.protection.outlook.com (40.93.13.96) by
 EVCSPEXCH01.ads.northwestern.edu (165.124.43.179) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11 via Frontend Transport; Mon, 28 Jul 2025 20:22:16 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Oq8ceULipBnG07ew0MVhvfCp+YwdCgSoygRmxJotZ53jvyS0XrzVn2Wvg0iKsNyRIfReLaSUjfO8q9kx0vDenQ+ILDH5Hq5HVAaRPHSqV9l0cRpy69mTyj68zE09KDtZz+f/pTo+vWGjiv1+TTOf/hqcFWYqHIBIPnFmB1ONJAbGEziucgvw8bdwUPxQZoy60D+tkySxqvu2ToMsuySG8vmz8220ffc0JtRRWCl8NC9NHkYFcu84yVynUEFUgCL4G1YndeLi4qWxdZqUWgW5qXi66lZRXnPY44TmRTDij9rqFIsG4HG/wQBiLuwjlnUgnRUqogCc1CpqeUtHYJYf2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ikSir2NsMxvFO1NrWrgjWtVpcnZixkbr5m7gQw4NiC4=;
 b=zKvEUdzm7a8BvETUhm2qUCTD9srlU1Qi3zEKiYluC5bRkescZ03x8c6iwLeE+2V/H9iQjf0a10GcEPdPWgP0ADg3K8FPpQoZYyO1+zfHtU4TvZfjsJnnhcJlZUxJUDRw4FJwgbUWMr/WHBfPsfH/BgKQQAb/c2plKgaV77DTXlrNS83hc/DgpxEZannmEzvCKtF1phkNqM2Nk3tjr/AnBrg25AHarq71QmWVOXLi0VhlXPL3XIuzPCT/FDx7oSICvLdF9doZl3Z4LIOlhG6/Qv1HDKGGIoffL6ptsNPY1e9IwKlDGjVfolWfTHfvJIiZaUIZJbh6cb5CwS1+YDykdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=northwestern.edu; dmarc=pass action=none
 header.from=northwestern.edu; dkim=pass header.d=northwestern.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=northwestern.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ikSir2NsMxvFO1NrWrgjWtVpcnZixkbr5m7gQw4NiC4=;
 b=N9vi71Uz0FT9KdSPkVpakiPdKvEH4U9etX1dGBSHSMnUw48zE/tTtl8L4q64Ltp4sqCa5Dwq1YM5h+zr5tty+o/L312MZ406ArDn8BOQwSaErYKSjOfY0RtWJDnaw6ZwY+Krb5DgQmTpvVEPMSijInHWdDq37dgQWEJejhNNEW8=
Received: from BL0PR05MB4674.namprd05.prod.outlook.com (2603:10b6:208:2a::33)
 by CO1PR05MB8117.namprd05.prod.outlook.com (2603:10b6:303:f7::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 01:22:14 +0000
Received: from BL0PR05MB4674.namprd05.prod.outlook.com
 ([fe80::2a87:1931:383a:f54d]) by BL0PR05MB4674.namprd05.prod.outlook.com
 ([fe80::2a87:1931:383a:f54d%4]) with mapi id 15.20.8964.019; Tue, 29 Jul 2025
 01:22:14 +0000
To: "shaggy@kernel.org" <shaggy@kernel.org>
Thread-Topic: [PATCH] jfs: fix metapage reference count leak in dbAllocCtl
Thread-Index: AQHcACaYk3hCTK8p0E2HtMrS6g0cmQ==
Date: Tue, 29 Jul 2025 01:22:14 +0000
Message-ID: <BL0PR05MB467408AB092885950559B422FF25A@BL0PR05MB4674.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR05MB4674:EE_|CO1PR05MB8117:EE_
x-ms-office365-filtering-correlation-id: 1a25bafd-12a1-4132-27f9-08ddce3e5979
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?/yxL6Hpy+J9W+0+cVDWnwTyeN8E47ldPNQf7ako+S0znUWFIUjECe8VzpA?=
 =?iso-8859-1?Q?M9pIhtV4NWcJtp78Y9SP60D/rj1UQlGG5EMlxvyN5cKth8t/4BhZQjQPSI?=
 =?iso-8859-1?Q?3IYQ+Dq8dfBBWk7Dby4tPJFTJkZ6E3cS8PfZbQIZXPayi8V10kyS57TZFb?=
 =?iso-8859-1?Q?+7eAzEElkm8IEbSlBrE+JgqYMeLW5pjJHHr6icheD94EawbKWfcmpCe/Hv?=
 =?iso-8859-1?Q?eqyKhLxCib+JAusUrkJQ6La5w7lyfyQlu60pd7KS/IzYrxTgsndYvI6Pq5?=
 =?iso-8859-1?Q?cf4lS3S1jzoSW2w7Qczxu1i0cDWBREDqsC6cATnl0Xnge/GhcP7qnHlBJF?=
 =?iso-8859-1?Q?Zgfv+6BapYuJDaEOF3gIGIJonPw0VVluTa7ligTOARcuRrtsC4vGZVA5YO?=
 =?iso-8859-1?Q?cD8iwnNT4jDYYWazL8vKK0dTwjlSeNossS68ZWe3Bg7vu7Wvuw3cdYcJWR?=
 =?iso-8859-1?Q?CLHJ0UxFz76opikA9RUfg8DHw6tDLnnzHFYVJh2PhvvNtcVMEb0QuHHxSX?=
 =?iso-8859-1?Q?ibNABUO0Qt/NKEd8/VKlCk9wuuXleTqAVUgyFn2cIFdgi4bjJrHKpoNts1?=
 =?iso-8859-1?Q?Cj28jS0zUsnRvrvCuXHp3criiDW8JQNv1pCWJSCQtFVJKVu8QAv5l0B3JW?=
 =?iso-8859-1?Q?vY4e301sPExRo8Jk3qkOZZbNg3KBKCTiX9gdRzWo538bpt47J0SGWMNfWc?=
 =?iso-8859-1?Q?sNCdSKbplkS1kutxZmL2XCJo84PwohU0TYgYJpkAvcCiXE5Mt7iAZr+ml+?=
 =?iso-8859-1?Q?rWxtheQlkwScJR53/g5xILsnlwD51j4w4IDJIMZip5FzQ7DsYM9ytCzFYo?=
 =?iso-8859-1?Q?qYIp7BkUfl/jmNh5vqjd2W34pkeFX1bOO2EgfC7+aJskwgR4fAZbfOoZbj?=
 =?iso-8859-1?Q?tCTP7yIRqG//AQk7BOTzl4vOgg3uSiaTLXqDfC+7CnpPkryMChiy3K2tRe?=
 =?iso-8859-1?Q?N4/GsGDiz0qfDZ7LOUauGSkkNt595mQqrJnyIjeLuv9zTQnLudhQtavx3G?=
 =?iso-8859-1?Q?tQ3CiMe8QFY+hFCoXmSzwXGhQDchckSorKq81L3U79cIC6G55vy1adU/Pq?=
 =?iso-8859-1?Q?/joQNtyyksJrkM6Qkkr/TedhWHJL7b8HEVoYBZkotK12LetSB6laqkqT/n?=
 =?iso-8859-1?Q?Tb3w8qCcP2XlvkJIZ43fL/YanB48dY2dDoTlvd8PZ9QM8t2NuPNZ7vIou5?=
 =?iso-8859-1?Q?HvVX+1DdpwngBaoGfJahLnQdX6bHUbFxWMOBW5DlD17onDpCAfN0oUt4ld?=
 =?iso-8859-1?Q?r13itPdnRlbO/MEcyFFxxE8eTrsKpioiHZ5+5Vp4mFaMIYdb0VCbqdhPLq?=
 =?iso-8859-1?Q?Nh15tEeg0dJ3zx6BD8fcnf3Se7lnVTaWBwUAsWUxwNn+drP7+wEguvEKc0?=
 =?iso-8859-1?Q?xvp65Qf2XvAB0Ee9sOi58v+7dFYUDBUARoTKJuCXR84OV4jPvLaUBwGgVn?=
 =?iso-8859-1?Q?JHwk32afMZeS0libH4+Fy0ED3twGOVd6j5VSm3rymFIZBlBGD8G191gm9Q?=
 =?iso-8859-1?Q?0Kr/OP//BSYGEXluFF1P5zIJDjbxfKNr/weM/aUUdvcw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR05MB4674.namprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wp1i3OiTFQ68j1B07Y7gWAFv1ivV4sw6Vu5rxDEXBM2jRpOHw5DVD2KS4e?=
 =?iso-8859-1?Q?jARRvnaSG2Ba6pNMQGZ5RXf0VagdT/HguStHT0w1nJbykMliFhSDKuUa9X?=
 =?iso-8859-1?Q?mWsUCAHLQQbmXNSbuPi8li4P/3sZujun4rP6MSMZk8gKoGugi4+ysEmuSr?=
 =?iso-8859-1?Q?H3BhWAbfv2eiYfBxWM70yUPbUZnkiyIlVlk0aiCD6PWbOwujhTBDuEqWHa?=
 =?iso-8859-1?Q?JAwaV5gDDkPC1V/D0y/1HWQI7tPiwfpotQ1EB3UQ5pd5rPnEK5HYAAbPT4?=
 =?iso-8859-1?Q?voB/krvQXT2PPyhUdbLveVynUcsF7frAtxxiI8NP72QPztN0ws0Y7pXoX0?=
 =?iso-8859-1?Q?WkabqrUdpitYhCe6QscaQSub5Tp23uF/Ihlto/CT5MLCvidCG2p2rbtCNk?=
 =?iso-8859-1?Q?YJF/Jhi+0qU2FN+04Q3H1Ub1MIW+a0JrUoCJY8ChZV7VF78lz/P8iYjwb1?=
 =?iso-8859-1?Q?8DCHktOiMYE1DeUEkX30zVpdLI0ubAXKXUOV9tVei8JGKDuCzZ2b2aVu6g?=
 =?iso-8859-1?Q?PW7iO2dpPDoe/rIMgv2Xn1WISksVQS8Tu0Zul1HiikVAGXUaYAnDzkawFl?=
 =?iso-8859-1?Q?LeJFFTKefMxt2JYMHA8Taqzo5jGchozT5g1LCjX3HzVO0w2XuufC6qtTxU?=
 =?iso-8859-1?Q?AgydN9tlhG9rk7Q4uHp2h+6jDboKp52x5FTuklww8n1Yy2ykeS8pN9H/R8?=
 =?iso-8859-1?Q?43UG+ckNItXeh7qe7eOBnErhkcWsXD2FbCCq0E8Ib8lJ6yBREwPKOrRA0O?=
 =?iso-8859-1?Q?FIVvPI1pFk5wgFqztHLM2tC0BYLXBhEXKbj1tQhNAlo/zDUuAN3zpuJJ4G?=
 =?iso-8859-1?Q?G5Re3b4x7iF4ffDpu0mNAtsWXzROaQxfC9rdVaqpYsvP0UkNajcTm6MVcK?=
 =?iso-8859-1?Q?XPSPUQCx/8OBUb1HdEyVgF1bpRwYQHA7LkNPGPFiyytmyzo++keOSP1/16?=
 =?iso-8859-1?Q?C2UymjkOgtCtyS3voyqq3gadgICaDC0mrSS9ry/8mqC2+Y0xtmELa6e+jl?=
 =?iso-8859-1?Q?EBX3GmmIktc6Fv5URElw7i1Z7w7CoGiO1emNOVYlpnhZP2AsJrz3PYoGKZ?=
 =?iso-8859-1?Q?twQpaqJSF7o1jd6EqSlOhjE98PTjyg5A35Ih6AWC+ppew7vBuypObi8uyz?=
 =?iso-8859-1?Q?5bq4x88TnZ92eL41DHhKA6bW3meWaG/50sz+4IvPOBeFoH1zaIugDoj+Cf?=
 =?iso-8859-1?Q?mG7pUTSLvfVCWkukl3qi09pMGih+5/eIM4sY8KumeS0ruCIZupK11s1oYD?=
 =?iso-8859-1?Q?YcxWCosDKmkcf48ANFdzFP22LPXAvqHUtakPxtlvkLMTkHn1v5EcjyuNjI?=
 =?iso-8859-1?Q?rE88Lefa8LAE+BTXTdiVkmq7F2DYxVg/OD0J/vJ51InjN4+2TYV+PNDbO9?=
 =?iso-8859-1?Q?GpFM4DtSrzNKjocf/INXEd7bMp5u8S3a+fo8Y7LM8IJIP2bJUC5ZT26oNt?=
 =?iso-8859-1?Q?hh2F0eLqsgMv+sAw1iBthufo9bg/aPhK2UJ2AcIIs4PQc2itr9u2rf6X9E?=
 =?iso-8859-1?Q?oT1CTVqM1DiYnSYYStlrpJ2zmZ9pLYQLQfHA7IRcOzAsXsmTYLnWZHzDvA?=
 =?iso-8859-1?Q?exQWg6uOMzu8FyGBLcxNYVGQoJ04+gQeXeEc+4hcmIWZvFg0Z1zgm7oQM9?=
 =?iso-8859-1?Q?qGaAS15D+kqQ/Wwkp3TNDPizfx1Op6W0bjiGZu8+tqEo3RWouwGkJRmoqq?=
 =?iso-8859-1?Q?fzD775uLCjhsIPvCY/hIwOoagJWqX9mhk9atuTcz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR05MB4674.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a25bafd-12a1-4132-27f9-08ddce3e5979
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 01:22:14.0327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7d76d361-8277-4708-a477-64e8366cd1bc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z6FkPzXAJmA3YJaiEvwKz8ISC2QelLDDxhB5TzDQ5py4WEgdIJBRpoPitqdh13EKEKNkdjIOJ9+eK2QTwULGVvyi/OSCvcNux/BuwWNENCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR05MB8117
X-OriginatorOrg: northwestern.edu
X-Proofpoint-GUID: DydDdN7YB_9EXGjmqi5NTsQgpae3J5HR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDAwOCBTYWx0ZWRfXzX9USwUAgSFB
 eAaQ4CT2XNZ6bKreUKWzLrmCBehDCUQ8TeBL78VFmwb64HoLbb91peQIGbtO4nu6ZgwbVymoBrM
 lELN33Ad1akjJZKGU6vZK6zKJzZIVbqZwWF3RiXhSb9CzAdHcVQyYLfyUmgSMxoFXjv+ssiw1T4
 QUlMpG+2vJM72zR9IdBT6HwXxEXgImgnHZS5gE7py/ACDvUCKb4qTGMeug8RvfCB5P9OeGJESkg
 l9lzn4/hnz9csm9HSWOVyrK7S62eBBbfG6HDFW8791hQAszS8kVQyxQiiovNCGghCjIKXIcfrBk
 URndkt0g5KqYKHRbiUfJqgsTNkn7lsRAQPeoSeAZE5Jv5vW7V0+bwa7a9U2IF5ZSV+YD/ocsVQH
 p5kuGsnL
X-Proofpoint-ORIG-GUID: H7aLVPFMyM3hfyCjb2QXGNOHVbB6qagC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_05,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Reason: safe
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In dbAllocCtl(),
 read_metapage() increases the reference count
 of the metapage. However, when dp->tree.budmin < 0, the function returns
 -EIO without calling release_metapage() to decrease the referenc [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ugZMq-0007Qu-V6
X-Mailman-Approved-At: Tue, 29 Jul 2025 13:24:22 +0000
Subject: [Jfs-discussion] [PATCH] jfs: fix metapage reference count leak in
 dbAllocCtl
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
From: Zheng Yu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Zheng Yu <zheng.yu@northwestern.edu>
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "aha310510@gmail.com" <aha310510@gmail.com>, "eadavis@qq.com" <eadavis@qq.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kovalev@altlinux.org" <kovalev@altlinux.org>,
 "niharchaithanya@gmail.com" <niharchaithanya@gmail.com>,
 "rand.sec96@gmail.com" <rand.sec96@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In dbAllocCtl(), read_metapage() increases the reference count of the
metapage. However, when dp->tree.budmin < 0, the function returns -EIO
without calling release_metapage() to decrease the reference count,
leading to a memory leak.

Add release_metapage(mp) before the error return to properly manage
the metapage reference count and prevent the leak.

Fixes: 51a203470f502a64a3da8dcea51c4748e8267a6c ("jfs: fix shift-out-of-bounds in dbSplit")

Signed-off-by: Zheng Yu <zheng.yu@northwestern.edu>
---
 fs/jfs/jfs_dmap.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 35e063c9f3a4..5a877261c3fe 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1809,8 +1809,10 @@ dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results)
                         return -EIO;
                 dp = (struct dmap *) mp->data;
 
-               if (dp->tree.budmin < 0)
+               if (dp->tree.budmin < 0) {
+                       release_metapage(mp);
                         return -EIO;
+               }
 
                 /* try to allocate the blocks.
                  */
--
2.43.0


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
