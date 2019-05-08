Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 749EA1812E
	for <lists+jfs-discussion@lfdr.de>; Wed,  8 May 2019 22:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:Date:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w2DGG4yftzAgc88V4lEiL1qSe2c6zalj1fX2sdzmEJc=; b=IEn689szkKtGXOgncee7WPMqgA
	UOwkrR/NsOhXgeogAd8apRQcSTlje8Hx2lFZ8HwvYb/oxdrillO+w8siRZwmXa6D3VOVP3NRrBdTR
	47AW2//DLQslimaaWLdI/G2R41FJVhHhQfUk82wOsoA8G44kFrh7N08SyAlQFLu0V9kY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hOTOQ-0000kp-GC; Wed, 08 May 2019 20:42:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <argante@pm.me>) id 1hOTOO-0000kh-Tw
 for jfs-discussion@lists.sourceforge.net; Wed, 08 May 2019 20:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+a8SPn7veHpEAl/0xhy4/VNEUltGosXUaFC/MNHprS4=; b=jFBnJn8SMaXVCDsm9SLK290qgK
 mES5+Mqc/QuSJJeuwEkL4k2SYWUjuifqBWRTY1oXy977lEWZyG+wdg/4t1JMwzK6H7o2yJbaDVOCp
 Dr0VC43fDaEm+w4sedBKU/1HbvgRNfw8V+5aJ597b4I4+HhNh0V5ISHRVm619pmjJC2c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+a8SPn7veHpEAl/0xhy4/VNEUltGosXUaFC/MNHprS4=; b=e
 6H7sHyq4iR4OEid0DAlmXSFbnQpe/gJiT3D4DqxDPrWGvjC8O2Sc4eLLelER/iBpzTwoywkMOxx0C
 k5VYkP+olMWjC25KM0+DD6YPiE/TjHpABdxoSMknxBtxnwqWyvwXuFbfMAwnY+qagNjzI169Uet6A
 RPa5Y5rq+TJXAEj8=;
Received: from mail1.protonmail.ch ([185.70.40.18])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hOTOL-00AFiA-GG
 for jfs-discussion@lists.sourceforge.net; Wed, 08 May 2019 20:42:20 +0000
Date: Wed, 08 May 2019 20:22:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=proton;
 t=1557346966; bh=+a8SPn7veHpEAl/0xhy4/VNEUltGosXUaFC/MNHprS4=;
 h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
 b=BTD59fNVgTR9X6WjVsOJjnJOKHV+X2mIEwDnjRvRp4mx8Cwlazs6QmIolhzwDE4L1
 D6lKdCPF6IZtjcofPmFESQXlwYpD1F6n+KD6m5i698lhnlwGEQ9/xCzGwfjduXuY5d
 pIFUP0G2vUhkgKH/G0Mz3WY+q4e7RkvDfvLvJ2+QSxldWaOdQ32knFzItnSyXNFbW+
 aVL5fr+QV9B1s9AgIz7k5ncHQCem/A3OxVdU+emiVcxYX2H0vUr+rBriblWA2a6WXF
 VU+tdUESLhqyvtrlwgsR9drirdcJz8+p7yLFcLjS2dEpAAtAx3moCVtGEg8QF4feqv
 /KixRjMu1yKEg==
To: JFS Discussion <jfs-discussion@lists.sourceforge.net>
Message-ID: <CTS9qdnPOXx_gs15E38ZIFo3Rn0LG5JzH7gmO1s36V1TZnWOAy5D80DhAnm1ABA1N7a3phPIGe2ixzk-BcvWHOuLnZfDNltamevdiRpqfL4=@pm.me>
Feedback-ID: sj1YN_iN560_iv4ir5EpCpCFj2RELVzNnBQpDIwMoUMNXowIBSidTdxSWFyLT3J_uOeJsE1taahISy929bGTAA==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hOTOL-00AFiA-GG
Subject: [Jfs-discussion] jfs missing features
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
From: argante via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: argante <argante@pm.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Hi,

Is it planned to add (some of) these features to JFS:

* fallocate(2)
https://github.com/kleikamp/linux-shaggy/blob/master/fs/jfs/file.c#L151

* 64 bit time type issue
https://github.com/kleikamp/linux-shaggy/blob/master/fs/jfs/jfs_types.h#L45

* DAX support
https://github.com/kleikamp/linux-shaggy/blob/master/Documentation/filesystems/dax.txt

These things seem to be the most missing in JFS (DAX for advanced users).

Best regards,
Daniel




_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
