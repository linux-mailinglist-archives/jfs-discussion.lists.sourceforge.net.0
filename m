Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A35A3E87E
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Feb 2025 00:30:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tlFz5-0000sW-Ai;
	Thu, 20 Feb 2025 23:29:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eadavis@qq.com>) id 1tlFz3-0000sE-2c
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 23:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Date:Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VLDA73BVAeJVMPeUhBwuP3jCY55hbvalaLQ/p6JAU/Y=; b=J/Qpq7CB1asrudm3QZw7TXkh7v
 UkqGQJ+dDSUoLgRHNt494yniCHjQB2sPLV9uZBKFdxVEQGQta03gzbnDihFzM2V7cltFB/gmrcMM/
 qSHpuqObXyOXzWWZ9E7Z10mwgZFMHmtRN5G84o190gFnvzVIpaXEFUdZIQlb6F0DTctc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Date:
 Subject:Cc:To:From:Message-ID:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VLDA73BVAeJVMPeUhBwuP3jCY55hbvalaLQ/p6JAU/Y=; b=GyrUKgt7D+y+MQo3oCPoi4mR3A
 9HNPIXjJKPhjHexDIrmhSLDzARv58ngyeyG8UpyJRw6KuETM4DnAAjc608eaPD4BJaD8vaSvf1WoD
 2TAx87B15J/nNrL2IeEcyn92n6MFY13h74PESvKjEf9+hGCFK1m1iotZKWYMl+O6mmqM=;
Received: from xmbghk7.mail.qq.com ([43.163.128.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tlFz2-0006Kc-UY for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Feb 2025 23:29:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1740094166; bh=VLDA73BVAeJVMPeUhBwuP3jCY55hbvalaLQ/p6JAU/Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Kf3tSP0wdT0Y865758a81Xhmw/fD75+/9GRhIV9KC/jIg/a290ITSf6pBh1GMuWZT
 YJfFEFGjlddSvKcjD/+cZU5lkiPrnHY9BLoFPZGqEjODMLl6OP3oMba5w9itqmHTEB
 EV2jtM71m0rmkNAX+ujTmTd4kuw5qchFkonfqm9M=
Received: from pek-lxu-l1.wrs.com ([114.244.57.157])
 by newxmesmtplogicsvrszgpua8-1.qq.com (NewEsmtp) with SMTP
 id 74311CC8; Fri, 21 Feb 2025 07:29:03 +0800
X-QQ-mid: xmsmtpt1740094143tmmwp9vzk
Message-ID: <tencent_A5A3A64447B765576B46C09365A369A96605@qq.com>
X-QQ-XMAILINFO: MIAHdi1iQo+zkFhFFlQicchYa4SqsFxX4R3T5UzD3XP93iz/Bj7Lyw5RXtEWcH
 z0Zd3bDxOgL9B7glOSSOKdDxioh3n/ffLrebm1LFgfCpr0C5CMGW91TuOxNMsoqlY7Bc9RO/Zj/r
 o9oIkx2BVsl2DM22ngrbIOD3OzOw7OF3JZKaiw7RVM2hVpkkOuM6FHaYxmVMGbHk+8XBjfNWgOPf
 ivjpyD/TIhfXCp7tup4fo5KZkDH4YrLvLibfWYpKFgeTb19HF/4fgv8o3fRyuyK+q7hZVIeC3DdW
 +h9CXUzy61u0V4SZ1Yg/KfOIUCRX8tuZ6TQQjkdgDTf2p6jHvTap/fqJYapkdsy/8ZAxpkLNrRAl
 YtpVMhVfyGo6aA8aNbMkcK1b6FpL1RFNxx9jYhSc2Iv8n93YqXamqTLnQmQRnDhw83RHLKnV8WOK
 IzO4Q7e4vUDVAZDxXMr8A4hn6XXdpKifJ43omlQKVsQ52t4Dcls4aNNbQjSDKgiC9b+2LuX8oCmv
 VrUyi6yE+3hkqmimC8XJfmgpIPGsffCfUbbiXlSwVC8Qf22q3rv+K1kcB0jLH/2F9qoo5IrZK/lG
 ucMh6HzOswdHGXIeniKt4DL7MJ88WwOabxlczAKb2/+wg8S9Ms26q40ltZ4tWsZP3EAheKHYLMCz
 1Z0i02H/Yl2ZatJd2wh4P2vq1iUqRUW/tFig1zjC3U7cmOl/V/KlTBwCURCac+96Z4r2kh2/irQ/
 nhBhQp+lNcDVMxT4s3LxspKTCKXZHEZQsA5LLRkp6AQsPa8TbyIKSwz4csH/igV2tY4Q4Mn/CHIo
 q5rEYePJrv5pqESyvvHcv9EAMb/4/eoD3Rw7qVA9UD7mAO81OJRvdBUzWJwN+0Gy/G4SLmDppPpd
 V82tT1THDi3/NdsNMIv+0kgElBB176Un87oBnEtWNBq6V4hukZWKxyhlA/bnz8I1NGHrSXVLI0lS
 MB0KnbxQbXNJDNd/oE1w==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
To: dave.kleikamp@oracle.com
Date: Fri, 21 Feb 2025 07:29:02 +0800
X-OQ-MSGID: <20250220232901.2483093-2-eadavis@qq.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <4d47e3cc-d1e6-4281-9a7c-463e6fb0af62@oracle.com>
References: <4d47e3cc-d1e6-4281-9a7c-463e6fb0af62@oracle.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > > syzbot reported a uninit-value in diFree. [1] > > > >
 When print_hex_dump() is called to print the first 32 bytes of imap, the >
 > first 8 members in struct dinomap are the first 32 bytes of imap, [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [43.163.128.53 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [43.163.128.53 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eadavis[at]qq.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [43.163.128.53 listed in list.dnswl.org]
X-Headers-End: 1tlFz2-0006Kc-UY
Subject: Re: [Jfs-discussion] [PATCH V2] jfs: Initialized first 8 members of
 the dinomap when creating imap
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
From: Edward Adam Davis via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Edward Adam Davis <eadavis@qq.com>
Cc: syzkaller-bugs@googlegroups.com, shaggy@kernel.org,
 jfs-discussion@lists.sourceforge.net, eadavis@qq.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

> > syzbot reported a uninit-value in diFree. [1]
> > 
> > When print_hex_dump() is called to print the first 32 bytes of imap, the
> > first 8 members in struct dinomap are the first 32 bytes of imap, because
> > in_numinos, in_numfree, in_diskblock and in_maxag are not initialized when
> > imap is created.
> > 
> > When creating imap, set in_numinos, in_numfree, in_diskblock and in_maxag
> > to 0 to prevent this issue from happening.
> 
> I appreciate the patch, but I'm accepting a different patch to fix the 
> problem:
I am very disappointed with your choice. The design of "KMSAN: uninit-value X"
is used to find improper data usage and defects in the program. If you directly
use functions such as kzmalloc to clear the memory to 0, you will lose a valuable
asset--KMSAN uninit-value.

BR,
Edward



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
