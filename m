Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E5F737209
	for <lists+jfs-discussion@lfdr.de>; Tue, 20 Jun 2023 18:48:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qBeWV-000482-SK;
	Tue, 20 Jun 2023 16:48:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <code@siddh.me>) id 1qBeRB-0003tr-85
 for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Jun 2023 16:42:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qJi69R81WJTJUXdtcjhBcxv9lDqnm8in4CQ0BRYzBHk=; b=m3X3TWoGkg1OOPbmEFPxVUAivo
 W0HXta2xnFN79bAnjpW+lJz4hFh7uJC8eTnkLEM7LXt3RvEIfl3Onah7KMUqrB31XuUDgRw40F0Tg
 Cggck4ZwuOVJgCYzf0PsJ41fFiAMXPPf4oZc/ClgO4hL3bU35qlcGbrVeNw9EVWYtSEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qJi69R81WJTJUXdtcjhBcxv9lDqnm8in4CQ0BRYzBHk=; b=Kb6r67vjF4bUM92HQgBFX6/HMP
 NLmuJ1B3G68w4bUsIZcyiKamRm36orx5+3KK2DZuCER+nVZaOfS2aWvHu7pgaRuFiGGH1JCt1JpWZ
 s9T3Bp1yZDTbA9zzR9vj/+d7TFqudU1GK/ro2frtNzuAHb5LhOMLzanqabKOGsGrIqmE=;
Received: from [103.117.158.51] (helo=sender-of-o51.zoho.in)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qBeQy-0007T7-Eo for jfs-discussion@lists.sourceforge.net;
 Tue, 20 Jun 2023 16:42:36 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1687279320; cv=none; d=zohomail.in; s=zohoarc; 
 b=IOZtmLgZDADmJSjzSQ51F4PlLBd4cp53RGLr7LF+QWXelBrTbhJN6PjZisTZNJUDPm7c+y2I8ByXXrJIBgqTAMO+6kDVHtLIu/GRAvFFyHI08Vc+Cp4KPetrOlTE157AnAK8WPpgHhMZvq03LC51Z4oKoOb3dPASorNnt7geTlg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1687279320;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=qJi69R81WJTJUXdtcjhBcxv9lDqnm8in4CQ0BRYzBHk=; 
 b=Jb5sTL9AgfDfwL6sWiqC2QoEdO/WRDWJUK7xk458XuD2p1XSuu6OgqtgIIKNUIAHlGIy5sdR3tEdjXLztJFvgZUzlGuuPbr3T/6YrRzO79QcXs3CDP5OKpA+XocZjRjX0CqxLQUm3RG3EoW9SrOun0EpHqj2lsCJFDffJBS69lU=
ARC-Authentication-Results: i=1; mx.zohomail.in; dkim=pass  header.i=siddh.me;
 spf=pass  smtp.mailfrom=code@siddh.me;
 dmarc=pass header.from=<code@siddh.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1687279320; 
 s=zmail; d=siddh.me; i=code@siddh.me;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=qJi69R81WJTJUXdtcjhBcxv9lDqnm8in4CQ0BRYzBHk=;
 b=QUn0+eZZE9p4z9aiuHiaNFWed+IwW02PqYZlNjruEiJ1X7xiTwTk+pmX04PcX+bG
 bPMJxc8a9VPSknZsuS+zS2effZQ8iignMjwfPh6kG86LK4bkthgJzNrLnTqn7QwsGB2
 GjS3jMPx8DR9fl1EWcj0+54llvSXV+UK/hlucuW8=
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1687279290236435.1731206576702;
 Tue, 20 Jun 2023 22:11:30 +0530 (IST)
Date: Tue, 20 Jun 2023 22:11:30 +0530
From: Siddh Raman Pant <code@siddh.me>
To: "Dave Kleikamp" <dave.kleikamp@oracle.com>,
 "Hoi Pok Wu" <wuhoipok@gmail.com>, "Liu Shixin" <liushixin2@huawei.com>,
 "Dongliang Mu" <mudongliangabcd@gmail.com>
Message-ID: <188d9aec760.2dfe3b2e316758.4209928399951806088@siddh.me>
In-Reply-To: <20230619131644.118332-1-code@siddh.me>
References: <20230619131644.118332-1-code@siddh.me>
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 19 Jun 2023 18:46:44 +0530 I wrote: > Max number of
 pages = Page size / Min block size Sorry for this typo, it should be max
 number of blocks (per page). Will fix and send. 
 Content analysis details:   (1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.117.158.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qBeQy-0007T7-Eo
X-Mailman-Approved-At: Tue, 20 Jun 2023 16:48:06 +0000
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: jfs_dmap: Validate
 db_l2nbperpage while mounting
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
 linux-kernel <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 syzbot+d2cd27dcf8e04b232eb2
 <syzbot+d2cd27dcf8e04b232eb2@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, 19 Jun 2023 18:46:44 +0530 I wrote:
> Max number of pages = Page size / Min block size

Sorry for this typo, it should be max number of blocks (per page).

Will fix and send.

Thanks,
Siddh


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
