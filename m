Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D99F737208
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Jun 2023 18:48:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qBeWV-00047p-0o;
	Tue, 20 Jun 2023 16:48:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <code@siddh.me>) id 1qBDbY-0007GL-I8
 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jun 2023 12:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ssQr11wA5JNcyAnldJTk18B1wXzPiiGhQYpVTxFwBAA=; b=i/XZH8ll+vOOXI32OZ06T/yxDb
 AXIUcAJV/238PPa3NQ7cSaVFCK9Uw/yo8BczfqQcNUliYOzbYLqKv+htMt3NBljlPt/gGQGQWchGw
 iVdJFz7Sr1Cv41TpcDJQInLxN8DeU+AAOvfXJ1VanKMmvyyIr8RFrk0tqrNw3+/A2E5w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ssQr11wA5JNcyAnldJTk18B1wXzPiiGhQYpVTxFwBAA=; b=e2xt9R9nbIGvfyXhT0H3rZJoWt
 g4TxZbapkAR1Eol/ZvC2koAF5w1259AKthjz1LDGF8cl0dPuQVIGwsfgL55qcSrBiT8U8lfR8FOyf
 9M6BCUgBYz1EAAKFysomGuFhrCJmOIYYLy8jYnwQLTo9+1cWMpiDMKlkrFeFOtK7b4e4=;
Received: from sender-of-o51.zoho.in ([103.117.158.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBDbR-008cXt-61 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jun 2023 12:03:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1687176174; cv=none; d=zohomail.in; s=zohoarc; 
 b=PUlEb5/yFcJ3vdmEBdlKMXQmv7Z+Q/5nGdJBgdt7hSBsi8xvOxi1KK7s+Q02aDhfIk8G19FSypzg2BAMtrKlszhaGP3XnqLK3i8Pj/oE8h4g+we4DMhXqhtQXx7MjxpR6aRrsbC/OfTZCzpYDazvEZoF4FMUbW7UIGDNyyHA/qU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1687176174;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=ssQr11wA5JNcyAnldJTk18B1wXzPiiGhQYpVTxFwBAA=; 
 b=RyFwWo3mC+FA9gY0i/iluDoecDHQeAM5dnB5HfM/jYqR+OxJX86o3+ZcpXMwy38UXtY3e8QrOQMJYmNDb0CQ+QNR9d68ov8EvPCK5+UovOabbk1CtNNt8/fzaznLUz0o7CsgZEyX1HhEO4wsr4Pzhp34MmoCK2kcEt3aJAauE24=
ARC-Authentication-Results: i=1; mx.zohomail.in; dkim=pass  header.i=siddh.me;
 spf=pass  smtp.mailfrom=code@siddh.me;
 dmarc=pass header.from=<code@siddh.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1687176174; 
 s=zmail; d=siddh.me; i=code@siddh.me;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=ssQr11wA5JNcyAnldJTk18B1wXzPiiGhQYpVTxFwBAA=;
 b=pvP+LrH2/zxPlq+yzHyBrlLvbtd1jnZ/NhfO3saQ2gD94VnDGnt38vrhXfb+Iqj0
 MCOAI74wI1JM44ogmBQ7apVqVs5XmhHZtTG6uhXImvCtwrKX4leOgaaa7cCCmgU86Pg
 OvCv0g29VoYWsAT3IlTxFR1Ctj26VOVHLgQorYc8=
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1687176143401505.491704779305;
 Mon, 19 Jun 2023 17:32:23 +0530 (IST)
Date: Mon, 19 Jun 2023 17:32:23 +0530
From: Siddh Raman Pant <code@siddh.me>
To: "Dave Kleikamp" <dave.kleikamp@oracle.com>
Message-ID: <188d388e20c.68252734185979.7356640998684740177@siddh.me>
In-Reply-To: <6284256f-dacc-e287-fe07-377491f87ca3@oracle.com>
References: <20230605140151.635604-1-code@siddh.me>
 <6284256f-dacc-e287-fe07-377491f87ca3@oracle.com>
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, 17 Jun 2023 03:46:09 +0530, Dave Kleikamp wrote: >
 Actually the sanity check should be much smaller. The maximum value > should
 be L2PSIZE - log2(MINBLOCKSIZE). In reality, I think it's always [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.117.158.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qBDbR-008cXt-61
X-Mailman-Approved-At: Tue, 20 Jun 2023 16:48:06 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: jfs_dmap: Validate db_l2nbperpage
 while mounting
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
Cc: jfs-discussion <jfs-discussion@lists.sourceforge.net>,
 Dongliang Mu <mudongliangabcd@gmail.com>, stable <stable@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liu Shixin <liushixin2@huawei.com>, Hoi Pok Wu <wuhoipok@gmail.com>,
 syzbot+d2cd27dcf8e04b232eb2
 <syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com>,
 Anup Sharma <anupnewsmail@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, 17 Jun 2023 03:46:09 +0530, Dave Kleikamp wrote:
> Actually the sanity check should be much smaller. The maximum value
> should be L2PSIZE - log2(MINBLOCKSIZE). In reality, I think it's always
> zero.

Thanks for the review, will amend the patch and send.

Thanks,
Siddh


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
