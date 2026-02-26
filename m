Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JUtB2Ckn2lfdAQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 02:39:44 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F4719FE1B
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 02:39:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3eHv4Kab9BxoA4vK5XgsrEgmxc/Yf/z8ii0kQxt1ijk=; b=ETVuUXQgsAPp/XAH11ebpEZA9i
	hpTNaJ7PK2TZ5GV9U9WGDsj+NVcn5lcb86wCP9GH3fGtH1Kmng5Izf0+pbaiNQ73WBK3PWFz2FflT
	nW9aPa64jzVqgSI3j5uBT4epGUgrmRpmFc3IuolwqkRqgEJ0q9nKAzwBeDhvsSNn+RYE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvQL7-0003I7-JL;
	Thu, 26 Feb 2026 01:38:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tz2294@columbia.edu>) id 1vvQL6-0003Hu-MF
 for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 01:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RuUfKqLF8pxHEU0+4gJWx2JSltGDNKQcxuvzq6VPwys=; b=AqEjcIj5GJi/kyyHgta1myzDgn
 WuUwN6lj5O54beWzinNhwD5WK31L4Vqy6rW5R93zrF5l9qdYYM9xk+dZK4FyHxdztwSpGs28y9dVN
 0ocXCbGUzahWUJGP12wa4+jW9WRKJKGGXpXGXNxrwInY47V1uYoVbzrrklocXQ8SLwuI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RuUfKqLF8pxHEU0+4gJWx2JSltGDNKQcxuvzq6VPwys=; b=dfkzYzJPk9+1616E15KgMKf9Ek
 J+M86EJ46qy7+Efol69LkSgG59BUbCMqb7WNE9M2bkaEgJFgdv+T0on4rLVekTPIKkxoFaAxpQoMa
 J1hwlHHbpinpZBtY+RnLJNb24tQJa4mTP2X0KCC1XM9j6j9SC62OesUoflLtYNB6dvxA=;
Received: from mx0a-00364e01.pphosted.com ([148.163.135.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvQL6-00038k-OW for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 01:38:53 +0000
Received: from pps.filterd (m0167071.ppops.net [127.0.0.1])
 by mx0a-00364e01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61Q1C0LE1688026
 for <jfs-discussion@lists.sourceforge.net>; Wed, 25 Feb 2026 20:38:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pps01; bh=RuUf
 KqLF8pxHEU0+4gJWx2JSltGDNKQcxuvzq6VPwys=; b=alfh4g7zGnrSJ3TqRJyt
 V5VcP7SDepx8NVi9vJhDyy8L5Ls5WE/RWZYhX4Ye5zukU4YSUajOuvw1hNA49SLE
 5MCVRYtKvCE10uV6CF70YwJulwzlLq4K9ukFkzKdcXeI/Bi4+EtJZkspWAQ/UxiS
 UAuXF8AJf0DZPpM47meX39PRepgBYuUes92asCRQQlWsHQzL/m7InreMTYXDR9TW
 g9tmlQQeJIjnOJXInA+ga3C6te0MJzR7Zh/RoLFz0L+iV9g1io5ESlZXDEXLNu3F
 RFDI77ScZHeVnIcmjYeOTWjiKdR4Xi3ro4xpWY03zOhgiOVRG1S+fz6senjXOYFF
 qg==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200])
 by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 4cj116ebrp-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 20:38:41 -0500 (EST)
Received: by mail-yw1-f200.google.com with SMTP id
 00721157ae682-7985951fa83so6618637b3.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 17:38:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772069921; cv=none;
 d=google.com; s=arc-20240605;
 b=FPjzOtHo9GqzSVYLZi6ikHg3OmPnjt1pEgx7zeVGD/Zk9bfutqYHdEyXfvQKCzfLEj
 DIlhgOX0tfl/IjAtKtN0LeYJLJh4Q6n1gl5QBP4lOvDUjURWs9BKHF/eMqBXyapDQPjz
 ThOPf5ayB2jd9aYqbtKKq7rn+a5/qnO2tMed4G7yNhO482qxMzzRvCGmGMhB6MpH+xfl
 9r7q1BMuuwomYbzPL4vCf3yMWLikO2bLeAD5SQe/yBLHz5lbVJfpmpbM3TQPnIHmP2RV
 HMcxQdGO6pSABy1CwnJkgvK4AZjAEJzR2hvFahza7mYYSPHCUgNZ03hooPRpdJwoMEb3
 wkuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=RuUfKqLF8pxHEU0+4gJWx2JSltGDNKQcxuvzq6VPwys=;
 fh=oEi1CaYgmqhm5sjwT98RJiE6YrLnj4LXLDn+ve0VQRk=;
 b=DuQlOz3GjMDYXiv9uZmoGdt5M6fnOXmu+Q0KCSwhHpt8qmJIEyPrv7xbLYnLdAPQ0V
 j+5f7HCPwjKSZ7T9HujJK+m98NY5nLaoYzD2bzchbMSWqfDVQgY4LK1ou95+3G/Nyf+g
 CMb7KteIbom5yQuVjnDAU/DMGmSNFbGMNt9+JXwzgL3iEfoSYRJAlF86vJNCSYGTQkt2
 edrPjsB+F27o8vtg+9G8ugfxiTVSMYfJHDjktSRtHY8pbZVUcQnnMP5Q3Ll+AexZDHBQ
 3VdtVgFvAgaPcWqcIts8CJqCwM0Wt1ek6G554SDC6Bk73/jBI7f571TPrFWtnysx1+ii
 3Keg==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772069921; x=1772674721;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=RuUfKqLF8pxHEU0+4gJWx2JSltGDNKQcxuvzq6VPwys=;
 b=Ddyu5deV92fjpiisQJhseiu2uVie/TvcIqxVgZ244yIYf7NlS02XRZr+rPagc3CPLz
 s8LUCZpadyHZZGfZzThoeAu1njOY74qeXqxOwSoK547Q77zs20EXyByv94OkojL7XN4I
 bmJZuEVW0sBLI1RoDLf7Tfzx6UNlxp8RTkY7Gena4zNyIq+H5gxnjv+JL0pu0AOTJebP
 THedYe0gEdWG+0BLWqm1E7/5BSQivxe2SXXTfXXZ068+3ZNcUCRsOCPea87NqDnjO6MZ
 RVx0xDIjPsiGP+B7HOG2YnOA2aUO1EKMlWQJ3GNqHHxQe8S+F8whQWGmd5SoJ3EdKhgs
 HFlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6b2U/eAFIRHt3Tbd69I9dBGD6+oDuluucbustZQAWxuKayG4VSQAWujRkyhjBgLMP7VNY1AN3Fz55yCQC3g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwdkKVUyipO14FDdbHdBIU1dVsku6+8bQ07uOiMR30A8gqhMvbg
 0So7R9ffQYSfKtXnCct0lVxI5bqlotVkvL4gLorzTIlBSHoT0mnczAVb8uI4xLDW9vx6klb1E0p
 YR5Zi7fI4W+8tWg4DTeks+SVzDIIbpCm3dFeBer3aHJAlR9QM4qDTTp1hi425waSw9RQ7zzw9uh
 InaWBnuvj/G0tOAdJgT0xCgY73lBHEYFRbMetUNzZ93ln8h3Y=
X-Gm-Gg: ATEYQzxfsud4PYbKavFnmPwlt6E5nLlZhqZ6qYvaQnSF6nQ4Uim/LA3tnyEqy255B5f
 4xT0LzB1AhwI4Wm9dK+bXvS3Pmb49ELXIYdSDAeeV2O7L2bH4G3qKs+OnFzO5pSOft2erDg0Yyi
 OVlIQ4g8nsGVYntBAKkIiNhkYK2fVEF5NYg8nf7e/wygfbEtpg4vrkXYp0I3Ikk73Obng9UcCVy
 /Hq4w==
X-Received: by 2002:a05:690c:4a05:b0:797:d268:b587 with SMTP id
 00721157ae682-79876c862f0mr5591397b3.29.1772069921009; 
 Wed, 25 Feb 2026 17:38:41 -0800 (PST)
X-Received: by 2002:a05:690c:4a05:b0:797:d268:b587 with SMTP id
 00721157ae682-79876c862f0mr5591057b3.29.1772069920550; Wed, 25 Feb 2026
 17:38:40 -0800 (PST)
MIME-Version: 1.0
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
 <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
In-Reply-To: <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
Date: Wed, 25 Feb 2026 20:38:29 -0500
X-Gm-Features: AaiRm52vdi5fnXqygcUgGP7ud7f8lrEjfwNIkhY8m1jYwEYqu5-B1oSLrvjdDbU
Message-ID: <CAKha_srSdS46FM8K-RKaiinP0y6kx_MhxnHjZ0KKP1NOAL+STA@mail.gmail.com>
To: Jens Axboe <axboe@kernel.dk>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDAxMiBTYWx0ZWRfXz00xMQxAPNcS
 r/qbvFWUwwLSQJm/b8OwttWyaZBY5snAbiJgMl8wS1aWnNKSESBHrCy6pjKd6tdVbITaI4LwbzH
 8i78rxwYdU7YfLTfxxmq7Af3FeSP1bS9T0805FHGkSu0jrERoIFaMD0ga6UgNVm+vVSSYcQYf0h
 Jqccyf72FzfMf2EDPQnxJq/fUCSGt4Fp+dW7zVCCqhHqq99737QluvFa7n14Ql6I0e9W0DMMSlv
 h+yTaHqIaAyG9H/zrPc5ApWuOjePbQZpmyRn+WT1XVy/uRWyubJBrlNBgekt4j7MBudVMIuEVt7
 c+dio5bFHDTI5gdPaQ0jlBVlmtSKdXjkGfzPUXN0e/iV1aTO+J5/MvK7bzL0392vMBaFOy7dqJN
 ebuBR2LWxSK6AcPnhacYPs5g8WwkYJAXYFizFEJ5zwjsoXN3j01P9YB7XcaSkxFNGEfHo8AsQ2n
 gDJspBu68TYgXhIOy5Q==
X-Authority-Analysis: v=2.4 cv=cYjfb3DM c=1 sm=1 tr=0 ts=699fa421 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=x7bEGLp0ZPQA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Da8U98TiO7q1upZEImrf:22
 a=79PYxaXUQd1wl-QFWJnA:22 a=Sm8IU_2CoLCVsS0ef1cA:9 a=QEXdDO2ut3YA:10
 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-GUID: aEYepemBAKCejrUr3uP6tF3aXlMuHumQ
X-Proofpoint-ORIG-GUID: aEYepemBAKCejrUr3uP6tF3aXlMuHumQ
X-Proofpoint-Virus-Version: vendor=nai engine=6800 definitions=11712
 signatures=596818
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=10
 impostorscore=10 adultscore=0 bulkscore=10 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260012
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Feb 25, 2026 at 5:52 PM Jens Axboe <axboe@kernel.dk>
 wrote: > On 2/25/26 3:40 PM, Tal Zussman wrote: > > folio_end_dropbehind()
 is called from folio_end_writeback(), which can > > run in IRQ c [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: columbia.edu]
 0.0 ARC_SIGNED             Message has a ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vvQL6-00038k-OW
Subject: Re: [Jfs-discussion] [PATCH RFC v2 1/2] filemap: defer dropbehind
 invalidation from IRQ context
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
From: Tal Zussman via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Tal Zussman <tz2294@columbia.edu>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Bob Copeland <me@bobcopeland.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Namjae Jeon <linkinjeon@kernel.org>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:axboe@kernel.dk,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:jack@suse.cz,m:yuezhang.mo@sony.com,m:me@bobcopeland.com,m:almaz.alexandrovich@paragon-software.com,m:linux-mm@kvack.org,m:linux-nilfs@vger.kernel.org,m:willy@infradead.org,m:linux-ext4@vger.kernel.org,m:linkinjeon@kernel.org,m:linux-block@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:aivazian.tigran@gmail.com,m:konishi.ryusuke@gmail.com,m:brauner@kernel.org,m:sj1557.seo@samsung.com,m:linux-kernel@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:akpm@linux-foundation.org,m:ntfs3@lists.linux.dev,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,columbia.edu:s=pps01];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,columbia.edu:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.943];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,suse.cz,sony.com,bobcopeland.com,paragon-software.com,kvack.org,vger.kernel.org,infradead.org,zeniv.linux.org.uk,gmail.com,samsung.com,linux-foundation.org,lists.linux.dev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[tz2294@columbia.edu];
	TAGGED_RCPT(0.00)[jfs-discussion];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kernel.dk:email,mail.gmail.com:mid,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,columbia.edu:replyto,columbia.edu:email]
X-Rspamd-Queue-Id: 14F4719FE1B
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgNTo1MuKAr1BNIEplbnMgQXhib2UgPGF4Ym9lQGtlcm5l
bC5kaz4gd3JvdGU6Cj4gT24gMi8yNS8yNiAzOjQwIFBNLCBUYWwgWnVzc21hbiB3cm90ZToKPiA+
IGZvbGlvX2VuZF9kcm9wYmVoaW5kKCkgaXMgY2FsbGVkIGZyb20gZm9saW9fZW5kX3dyaXRlYmFj
aygpLCB3aGljaCBjYW4KPiA+IHJ1biBpbiBJUlEgY29udGV4dCB0aHJvdWdoIGJ1ZmZlcl9oZWFk
IGNvbXBsZXRpb24uCj4gPgo+ID4gUHJldmlvdXNseSwgd2hlbiBmb2xpb19lbmRfZHJvcGJlaGlu
ZCgpIGRldGVjdGVkICFpbl90YXNrKCksIGl0IHNraXBwZWQKPiA+IHRoZSBpbnZhbGlkYXRpb24g
ZW50aXJlbHkuIFRoaXMgbWVhbnQgdGhhdCBmb2xpb3MgbWFya2VkIGZvciBkcm9wYmVoaW5kCj4g
PiB2aWEgUldGX0RPTlRDQUNIRSB3b3VsZCByZW1haW4gaW4gdGhlIHBhZ2UgY2FjaGUgYWZ0ZXIg
d3JpdGViYWNrIHdoZW4KPiA+IGNvbXBsZXRlZCBmcm9tIElSUSBjb250ZXh0LCBkZWZlYXRpbmcg
dGhlIHB1cnBvc2Ugb2YgdXNpbmcgaXQuCj4gPgo+ID4gRml4IHRoaXMgYnkgZGVmZXJyaW5nIHRo
ZSBkcm9wYmVoaW5kIGludmFsaWRhdGlvbiB0byBhIHdvcmsgaXRlbS4gIFdoZW4KPiA+IGZvbGlv
X2VuZF9kcm9wYmVoaW5kKCkgaXMgY2FsbGVkIGZyb20gSVJRIGNvbnRleHQsIHRoZSBmb2xpbyBp
cyBhZGRlZCB0bwo+ID4gYSBnbG9iYWwgZm9saW9fYmF0Y2ggYW5kIHRoZSB3b3JrIGl0ZW0gaXMg
c2NoZWR1bGVkLiBUaGUgd29ya2VyIGRyYWlucwo+ID4gdGhlIGJhdGNoLCBsb2NraW5nIGVhY2gg
Zm9saW8gYW5kIGNhbGxpbmcgZmlsZW1hcF9lbmRfZHJvcGJlaGluZCgpLCBhbmQKPiA+IHJlLWRy
YWlucyBpZiBuZXcgZm9saW9zIGFycml2ZWQgd2hpbGUgcHJvY2Vzc2luZy4KPiA+Cj4gPiBUaGlz
IHVuYmxvY2tzIGVuYWJsaW5nIFJXRl9VTkNBQ0hFRCBmb3IgYmxvY2sgZGV2aWNlcyBhbmQgb3Ro
ZXIKPiA+IGJ1ZmZlcl9oZWFkLWJhc2VkIEkvTy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBUYWwg
WnVzc21hbiA8dHoyMjk0QGNvbHVtYmlhLmVkdT4KPiA+IC0tLQo+ID4gIG1tL2ZpbGVtYXAuYyB8
IDg0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3OSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9tbS9maWxlbWFwLmMgYi9tbS9maWxlbWFwLmMKPiA+
IGluZGV4IGViZDc1Njg0Y2IwYS4uNjI2M2YzNWM1ZDEzIDEwMDY0NAo+ID4gLS0tIGEvbW0vZmls
ZW1hcC5jCj4gPiArKysgYi9tbS9maWxlbWFwLmMKPiA+IEBAIC0xMDg1LDYgKzEwODUsOCBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGN0bF90YWJsZSBmaWxlbWFwX3N5c2N0bF90YWJsZVtdID0gewo+
ID4gICB9Cj4gPiAgfTsKPiA+Cj4gPiArc3RhdGljIHZvaWQgX19pbml0IGRyb3BiZWhpbmRfaW5p
dCh2b2lkKTsKPiA+ICsKPiA+ICB2b2lkIF9faW5pdCBwYWdlY2FjaGVfaW5pdCh2b2lkKQo+ID4g
IHsKPiA+ICAgaW50IGk7Cj4gPiBAQCAtMTA5Miw2ICsxMDk0LDcgQEAgdm9pZCBfX2luaXQgcGFn
ZWNhY2hlX2luaXQodm9pZCkKPiA+ICAgZm9yIChpID0gMDsgaSA8IFBBR0VfV0FJVF9UQUJMRV9T
SVpFOyBpKyspCj4gPiAgIGluaXRfd2FpdHF1ZXVlX2hlYWQoJmZvbGlvX3dhaXRfdGFibGVbaV0p
Owo+ID4KPiA+ICsgZHJvcGJlaGluZF9pbml0KCk7Cj4gPiAgIHBhZ2Vfd3JpdGViYWNrX2luaXQo
KTsKPiA+ICAgcmVnaXN0ZXJfc3lzY3RsX2luaXQoInZtIiwgZmlsZW1hcF9zeXNjdGxfdGFibGUp
Owo+ID4gIH0KPiA+IEBAIC0xNjEzLDIzICsxNjE2LDk0IEBAIHN0YXRpYyB2b2lkIGZpbGVtYXBf
ZW5kX2Ryb3BiZWhpbmQoc3RydWN0IGZvbGlvICpmb2xpbykKPiA+ICAgKiBJZiBmb2xpbyB3YXMg
bWFya2VkIGFzIGRyb3BiZWhpbmQsIHRoZW4gcGFnZXMgc2hvdWxkIGJlIGRyb3BwZWQgd2hlbiB3
cml0ZWJhY2sKPiA+ICAgKiBjb21wbGV0ZXMuIERvIHRoYXQgbm93LiBJZiB3ZSBmYWlsLCBpdCdz
IGxpa2VseSBiZWNhdXNlIG9mIGEgYmlnIGZvbGlvIC0KPiA+ICAgKiBqdXN0IHJlc2V0IGRyb3Bi
ZWhpbmQgZm9yIHRoYXQgY2FzZSBhbmQgbGF0dGVyIGNvbXBsZXRpb25zIHNob3VsZCBpbnZhbGlk
YXRlLgo+ID4gKyAqCj4gPiArICogV2hlbiBjYWxsZWQgZnJvbSBJUlEgY29udGV4dCAoZS5nLiBi
dWZmZXJfaGVhZCBjb21wbGV0aW9uKSwgd2UgY2Fubm90IGxvY2sKPiA+ICsgKiB0aGUgZm9saW8g
YW5kIGludmFsaWRhdGUuIERlZmVyIHRvIGEgd29ya3F1ZXVlIHNvIHRoYXQgY2FsbGVycyBsaWtl
Cj4gPiArICogZW5kX2J1ZmZlcl9hc3luY193cml0ZSgpIHRoYXQgY29tcGxldGUgaW4gSVJRIGNv
bnRleHQgc3RpbGwgZ2V0IHRoZWlyIGZvbGlvcwo+ID4gKyAqIHBydW5lZC4KPiA+ICAgKi8KPiA+
ICtzdGF0aWMgREVGSU5FX1NQSU5MT0NLKGRyb3BiZWhpbmRfbG9jayk7Cj4gPiArc3RhdGljIHN0
cnVjdCBmb2xpb19iYXRjaCBkcm9wYmVoaW5kX2ZiYXRjaDsKPiA+ICtzdGF0aWMgc3RydWN0IHdv
cmtfc3RydWN0IGRyb3BiZWhpbmRfd29yazsKPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBkcm9wYmVo
aW5kX3dvcmtfZm4oc3RydWN0IHdvcmtfc3RydWN0ICp3KQo+ID4gK3sKPiA+ICsgc3RydWN0IGZv
bGlvX2JhdGNoIGZiYXRjaDsKPiA+ICsKPiA+ICthZ2FpbjoKPiA+ICsgc3Bpbl9sb2NrX2lycSgm
ZHJvcGJlaGluZF9sb2NrKTsKPiA+ICsgZmJhdGNoID0gZHJvcGJlaGluZF9mYmF0Y2g7Cj4gPiAr
IGZvbGlvX2JhdGNoX3JlaW5pdCgmZHJvcGJlaGluZF9mYmF0Y2gpOwo+ID4gKyBzcGluX3VubG9j
a19pcnEoJmRyb3BiZWhpbmRfbG9jayk7Cj4gPiArCj4gPiArIGZvciAoaW50IGkgPSAwOyBpIDwg
Zm9saW9fYmF0Y2hfY291bnQoJmZiYXRjaCk7IGkrKykgewo+ID4gKyBzdHJ1Y3QgZm9saW8gKmZv
bGlvID0gZmJhdGNoLmZvbGlvc1tpXTsKPiA+ICsKPiA+ICsgaWYgKGZvbGlvX3RyeWxvY2soZm9s
aW8pKSB7Cj4gPiArIGZpbGVtYXBfZW5kX2Ryb3BiZWhpbmQoZm9saW8pOwo+ID4gKyBmb2xpb191
bmxvY2soZm9saW8pOwo+ID4gKyB9Cj4gPiArIGZvbGlvX3B1dChmb2xpbyk7Cj4gPiArIH0KPiA+
ICsKPiA+ICsgLyogRHJhaW4gZm9saW9zIHRoYXQgd2VyZSBhZGRlZCB3aGlsZSB3ZSB3ZXJlIHBy
b2Nlc3NpbmcuICovCj4gPiArIHNwaW5fbG9ja19pcnEoJmRyb3BiZWhpbmRfbG9jayk7Cj4gPiAr
IGlmIChmb2xpb19iYXRjaF9jb3VudCgmZHJvcGJlaGluZF9mYmF0Y2gpKSB7Cj4gPiArIHNwaW5f
dW5sb2NrX2lycSgmZHJvcGJlaGluZF9sb2NrKTsKPiA+ICsgZ290byBhZ2FpbjsKPiA+ICsgfQo+
ID4gKyBzcGluX3VubG9ja19pcnEoJmRyb3BiZWhpbmRfbG9jayk7Cj4gPiArfQo+ID4gKwo+ID4g
K3N0YXRpYyB2b2lkIF9faW5pdCBkcm9wYmVoaW5kX2luaXQodm9pZCkKPiA+ICt7Cj4gPiArIGZv
bGlvX2JhdGNoX2luaXQoJmRyb3BiZWhpbmRfZmJhdGNoKTsKPiA+ICsgSU5JVF9XT1JLKCZkcm9w
YmVoaW5kX3dvcmssIGRyb3BiZWhpbmRfd29ya19mbik7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRp
YyB2b2lkIGZvbGlvX2VuZF9kcm9wYmVoaW5kX2lycShzdHJ1Y3QgZm9saW8gKmZvbGlvKQo+ID4g
K3sKPiA+ICsgdW5zaWduZWQgbG9uZyBmbGFnczsKPiA+ICsKPiA+ICsgc3Bpbl9sb2NrX2lycXNh
dmUoJmRyb3BiZWhpbmRfbG9jaywgZmxhZ3MpOwo+ID4gKwo+ID4gKyAvKiBJZiB0aGVyZSBpcyBu
byBzcGFjZSBpbiB0aGUgZm9saW9fYmF0Y2gsIHNraXAgdGhlIGludmFsaWRhdGlvbi4gKi8KPiA+
ICsgaWYgKCFmb2xpb19iYXRjaF9zcGFjZSgmZHJvcGJlaGluZF9mYmF0Y2gpKSB7Cj4gPiArIHNw
aW5fdW5sb2NrX2lycXJlc3RvcmUoJmRyb3BiZWhpbmRfbG9jaywgZmxhZ3MpOwo+ID4gKyByZXR1
cm47Cj4gPiArIH0KPiA+ICsKPiA+ICsgZm9saW9fZ2V0KGZvbGlvKTsKPiA+ICsgZm9saW9fYmF0
Y2hfYWRkKCZkcm9wYmVoaW5kX2ZiYXRjaCwgZm9saW8pOwo+ID4gKyBzcGluX3VubG9ja19pcnFy
ZXN0b3JlKCZkcm9wYmVoaW5kX2xvY2ssIGZsYWdzKTsKPiA+ICsKPiA+ICsgc2NoZWR1bGVfd29y
aygmZHJvcGJlaGluZF93b3JrKTsKPiA+ICt9Cj4KPiBIb3cgd2VsbCBkb2VzIHRoaXMgc2NhbGU/
IEkgZGlkIGEgcGF0Y2ggYmFzaWNhbGx5IHRoZSBzYW1lIGFzIHRoaXMsIGJ1dAo+IG5vdCB1c2lu
ZyBhIGZvbGlvIGJhdGNoIHRob3VnaC4gQnV0IHRoZSBtYWluIHN0aWNraW5nIHBvaW50IHdhcwo+
IGRyb3BiZWhpbmRfbG9jayBjb250ZW50aW9uLCB0byB0aGUgcG9pbnQgd2hlcmUgSSBsZWZ0IGl0
IGFsb25lIGFuZAo+IHRob3VnaHQgIm9rIG1heWJlIHdlIGp1c3QgZG8gdGhpcyB3aGVuIHdlJ3Jl
IGRvbmUgd2l0aCB0aGUgYXdmdWwKPiBidWZmZXJfaGVhZCBzdHVmZiIuIFdoYXQgaGFwcGVucyBp
ZiB5b3UgaGF2ZSBOIHRocmVhZHMgZG9pbmcgSU8gYXQgdGhlCj4gc2FtZSB0aW1lIHRvIE4gYmxv
Y2sgZGV2aWNlcz8gSSBzdXNwZWN0IGl0J2xsIGxvb2sgYWJzb2x1dGVseSB0ZXJyaWJsZSwKPiBh
cyBlYWNoIHRocmVhZCB3aWxsIGJlIGJhbmdpbmcgb24gdGhhdCBkcm9wYmVoaW5kX2xvY2suCj4K
PiBPbmUgc29sdXRpb24gY291bGQgcG90ZW50aWFsbHkgYmUgdG8gdXNlIHBlci1jcHUgbGlzdHMg
Zm9yIHRoaXMuIElmIHlvdQo+IGhhdmUgTiB0aHJlYWRzIHdvcmtpbmcgb24gc2VwYXJhdGUgYmxv
Y2sgZGV2aWNlcywgdGhleSB3aWxsIHRlbmQgdG8gYmUKPiBzdGlja3kgdG8gdGhlaXIgQ1BVIGFu
eXdheS4KPgo+IHRsZHIgLSBJIGRvbid0IGJlbGlldmUgdGhlIGFib3ZlIHdpbGwgd29yayB3ZWxs
IGVub3VnaCB0byBzY2FsZQo+IGFwcHJvcHJpYXRlbHkuCj4KPiBMZXQgbWUga25vdyBpZiB5b3Ug
d2FudCBtZSB0byB0ZXN0IHRoaXMgb24gbXkgYmlnIGJveCwgaXQncyBnb3QgYSBidW5jaAo+IG9m
IGRyaXZlcyBhbmQgQ1BVcyB0byBtYXRjaC4KPgo+IEkgZGlkIGEgcGF0Y2ggZXhhY3RseSBtYXRj
aGluZyB0aGlzLCB5b3VjIGFuIHByb2JhYmx5IGZpbmQgaXQKClllcCwgdGhhdCBtYWtlcyBzZW5z
ZS4gSSB0aGluayBhIHBlci1jcHUgZm9saW9fYmF0Y2gsIHNwaW5sb2NrLCBhbmQKd29ya19zdHJ1
Y3Qgd291bGQgc29sdmUgdGhpcyAoYXNzdW1pbmcgdGhhdCdzIHdoYXQgeW91IG1lYW50IGJ5IHBl
ci1jcHUgbGlzdHMpCmFuZCB3b3VsZCBiZSBzaW1wbGUgZW5vdWdoIHRvIGltcGxlbWVudC4gSSBj
YW4gcHV0IHRoYXQgdG9nZXRoZXIgYW5kIHNlbmQgaXQKdG9tb3Jyb3cuIEknbGwgc2VlIGlmIEkg
Y2FuIGZpbmQgeW91ciBwYXRjaCB0b28uCgpBbnkgdGVzdGluZyB5b3UgY2FuIGRvIG9uIHRoYXQg
dmVyc2lvbiB3b3VsZCBiZSB2ZXJ5IGFwcHJlY2lhdGVkISBJJ20KdW5mb3J0dW5hdGVseSBkaXNr
LWxpbWl0ZWQgZm9yIHRoZSBtb21lbnQuLi4KCj4gPiAgdm9pZCBmb2xpb19lbmRfZHJvcGJlaGlu
ZChzdHJ1Y3QgZm9saW8gKmZvbGlvKQo+ID4gIHsKPiA+ICAgaWYgKCFmb2xpb190ZXN0X2Ryb3Bi
ZWhpbmQoZm9saW8pKQo+ID4gICByZXR1cm47Cj4gPgo+ID4gICAvKgo+ID4gLSAqIEhpdHRpbmcg
IWluX3Rhc2soKSBzaG91bGQgbm90IGhhcHBlbiBvZmYgUldGX0RPTlRDQUNIRSB3cml0ZWJhY2ss
Cj4gPiAtICogYnV0IGNhbiBoYXBwZW4gaWYgbm9ybWFsIHdyaXRlYmFjayBqdXN0IGhhcHBlbnMg
dG8gZmluZCBkaXJ0eSBmb2xpb3MKPiA+IC0gKiB0aGF0IHdlcmUgY3JlYXRlZCBhcyBwYXJ0IG9m
IHVuY2FjaGVkIHdyaXRlYmFjaywgYW5kIHRoYXQgd3JpdGViYWNrCj4gPiAtICogd291bGQgb3Ro
ZXJ3aXNlIG5vdCBuZWVkIG5vbi1JUlEgaGFuZGxpbmcuIEp1c3Qgc2tpcCB0aGUKPiA+IC0gKiBp
bnZhbGlkYXRpb24gaW4gdGhhdCBjYXNlLgo+ID4gKyAqIEhpdHRpbmcgIWluX3Rhc2soKSBjYW4g
aGFwcGVuIGZvciBJTyBjb21wbGV0ZWQgZnJvbSBJUlEgY29udGV4dHMgb3IKPiA+ICsgKiBpZiBu
b3JtYWwgd3JpdGViYWNrIGp1c3QgaGFwcGVucyB0byBmaW5kIGRpcnR5IGZvbGlvcyB0aGF0IHdl
cmUKPiA+ICsgKiBjcmVhdGVkIGFzIHBhcnQgb2YgdW5jYWNoZWQgd3JpdGViYWNrLCBhbmQgdGhh
dCB3cml0ZWJhY2sgd291bGQKPiA+ICsgKiBvdGhlcndpc2Ugbm90IG5lZWQgbm9uLUlSUSBoYW5k
bGluZy4KPiA+ICAgKi8KPiA+ICAgaWYgKGluX3Rhc2soKSAmJiBmb2xpb190cnlsb2NrKGZvbGlv
KSkgewo+ID4gICBmaWxlbWFwX2VuZF9kcm9wYmVoaW5kKGZvbGlvKTsKPiA+ICAgZm9saW9fdW5s
b2NrKGZvbGlvKTsKPiA+ICsgcmV0dXJuOwo+ID4gICB9Cj4gPiArCj4gPiArIC8qCj4gPiArICog
SW4gSVJRIGNvbnRleHQgd2UgY2Fubm90IGxvY2sgdGhlIGZvbGlvIG9yIGNhbGwgaW50byB0aGUK
PiA+ICsgKiBpbnZhbGlkYXRpb24gcGF0aC4gRGVmZXIgdG8gYSB3b3JrcXVldWUuIFRoaXMgaGFw
cGVucyBmb3IKPiA+ICsgKiBidWZmZXJfaGVhZC1iYXNlZCB3cml0ZWJhY2sgd2hpY2ggcnVucyBm
cm9tIGJpbyBJUlEgY29udGV4dC4KPiA+ICsgKi8KPiA+ICsgaWYgKCFpbl90YXNrKCkpCj4gPiAr
IGZvbGlvX2VuZF9kcm9wYmVoaW5kX2lycShmb2xpbyk7Cj4gPiAgfQo+Cj4gSWRlYWxseSB3ZSdk
IGhhdmUgdGhlIGNhbGxlciBiZSByZXNwb25zaWJsZSBmb3IgdGhpcywgcmF0aGVyIHRoYW4gcHV0
IGl0Cj4gaW5zaWRlIGZvbGlvX2VuZF9kcm9wYmVoaW5kKCkuCj4KPiAtLQo+IEplbnMgQXhib2UK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlz
Y3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNz
aW9uCg==
