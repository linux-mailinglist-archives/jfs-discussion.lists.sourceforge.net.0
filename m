Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F10C9BCA0
	for <lists+jfs-discussion@lfdr.de>; Tue, 02 Dec 2025 15:32:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P6WreI+yeQva+xmkqIbNoSffp7NIsANfJt8LWURegww=; b=UftmyN5ccWFtvjSB5UYtHM1ze+
	EmhST/F9mCVmixRA+zCffoSNWrQXsZKtSdRQ/KoDy8sHy8TKu6gSatSdly83zrPXDKA7CP08xyCmC
	d5LJZCBeIIjSKeubjbw/gHhiStZroDwYM/UQxhHqxZSeLt1asewTC8RFPRbYDZF5iFmQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vQRQU-0006sB-Ne;
	Tue, 02 Dec 2025 14:32:23 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <junjie.cao@intel.com>) id 1vQLWj-0000Mf-0K
 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Dec 2025 08:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UWObx4TOkMojLDPrDimeRYc6M84WGqi5azbCauW9A50=; b=LYhxjxuHWVxXPfybdThKPYDiaT
 e1auYg8CSrjMECuCHA00Hehu0F627Fg+hywx7AgfN9/OWBn2d2awqZk5dzRhdF6B9f13/+Q+te5lf
 0fv/hRQe6r7qMPwjpSzWT3vHx+zEWkesJXOOtsC3efAlCQrcXRfU516WXIYmBWjAfOlY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UWObx4TOkMojLDPrDimeRYc6M84WGqi5azbCauW9A50=; b=RfCMGB5kP0SedkRf4X4mawRtu6
 SBZUIkIcEQi0Vj1NjKy14LPU9TZEeepeojosmKQlVKHLN/meVyriFmXcpKramS6wVjhVWr6apz0Q7
 N+9NnpTSb8BD6E0JAlbWoYWKkVNH3tIeGZcqx+REmq6jGfRmFv5FExBl2/q6/ozaMTbw=;
Received: from mgamail.intel.com ([192.198.163.9])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vQLWi-00081m-GT for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Dec 2025 08:14:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764663264; x=1796199264;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UWObx4TOkMojLDPrDimeRYc6M84WGqi5azbCauW9A50=;
 b=WIfpFKYsdlnmRqZWMa1ZcEGu+ua8ghzV8DzuXJU0dgFoHAcOtNDOeQ7O
 /WtGGVhUWFXcJnPlC+/j4SBbw85HK5pxYSj7RyYAgynytTV+4KvWQ2fE6
 geNw6uHBeUAT0ZyhjI7PkcE5P6aofcnfH0Kcy+AH7wejPX8jmlgkpJGcZ
 30KsfBugdQ79/CbQpAfQEv2msiBuA1e+cwnDC7Ql3hszlWkzAZ9CCYx6y
 ByT+gSkKC6iLzVrUv5ASxQSXXDu/0onVV6WDn78o+OtHWiX9w4IRj0u39
 wvd/MoSSVkiVSrM6cZ8C2CXcrJQFeOpvkacZA6FaJbaKWdmDL9YsZtzh5 A==;
X-CSE-ConnectionGUID: 7rXSFrgJSymLgR1D56SWKQ==
X-CSE-MsgGUID: 5Ci4MybYQpuVBhVYtBhslQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="77308183"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="77308183"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 00:14:19 -0800
X-CSE-ConnectionGUID: J5DUtvBvTW24IZTGLf9mxw==
X-CSE-MsgGUID: sElsDJPwQXCox4bfQqUhzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198513700"
Received: from junjie-nuc14rvs.bj.intel.com ([10.238.152.23])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 00:14:17 -0800
To: syzbot+9c0c58ea2e4887ab502e@syzkaller.appspotmail.com
Date: Tue,  2 Dec 2025 16:14:24 +0800
Message-ID: <20251202081424.173730-1-junjie.cao@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <000000000000d890a405e997896e@google.com>
References: 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: #syz test: https://github.com/Junjie650/linux.git
 fix-jfs-evict-inode
 Hi, Please test the fix for this bug on the above tree/branch. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1vQLWi-00081m-GT
X-Mailman-Approved-At: Tue, 02 Dec 2025 14:32:20 +0000
Subject: Re: [Jfs-discussion] [syzbot] kernel BUG in jfs_evict_inode
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
From: Junjie Cao via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Junjie Cao <junjie.cao@intel.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

#syz test: https://github.com/Junjie650/linux.git fix-jfs-evict-inode

Hi,

Please test the fix for this bug on the above tree/branch.

Thanks,
Junjie


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
