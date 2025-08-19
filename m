Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F531B2BD03
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Aug 2025 11:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eTxMLYIBC6rPWWNn4S7zTbpglLA978/ltgmPKWN+BGw=; b=QrUhHz8Oxk2OMWggKx+NnL2i3M
	wdXDGL6ytg+oLxe3dDgBOlUPHL2838r0tD6c/z7sVnaLgrbBw5iC4TOSDGDdz30C/O3u55jHBjcPd
	KDzv29y1QdC4rmBpShnmszOm7c8BFNXZxkMsJ4ea1DiYHEzUPF5dJese+SDxq5TKDuPQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uoISG-0001iO-Pg;
	Tue, 19 Aug 2025 09:16:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <Markus.Elfring@web.de>) id 1uoISE-0001i4-Oa
 for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Aug 2025 09:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:Subject:References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eBYVJ2FkORuTwqWvVkBmCDP8mHAzlrBhN4QFixSH68M=; b=ed6NYsGQXjfyW/m+9kB77cr/6g
 1iEZfj1kaMo8fIbsQ7GkHZ2s9NMxri3khjbXO9k53cDvT4ANe5LbCmEDB/xYojHLc+675Cq4qFUt4
 gNJjplWP/7ICzY7Qg2awKMJM+IgguzzidxkoWR8niynzhJF6a1rw0IH+wNHhjrT6QXWs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:Subject:
 References:Cc:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eBYVJ2FkORuTwqWvVkBmCDP8mHAzlrBhN4QFixSH68M=; b=DqJ9dIlrJ2/Wj2t8i2wxm7KLDi
 ksPNzUkaNEnzqxNX4xssZaF1p6SpgKRblxT6vhd2Vlm+bLGxUaMsRY/FiZXQwDphp4QJL/3wttdqV
 vjctCtWuqD8gFeQw7E6Y6ug/aQyzxVhzH6dLqCAAV0JL5p8omDHwwR0qksROdZlgbQ94=;
Received: from mout.web.de ([212.227.15.4])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uoISE-0006ci-IH for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Aug 2025 09:16:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
 s=s29768273; t=1755594972; x=1756199772; i=markus.elfring@web.de;
 bh=eBYVJ2FkORuTwqWvVkBmCDP8mHAzlrBhN4QFixSH68M=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
 cc:content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=kdpflB0TjkM4sUfl5fIKS6zpNPXrY4PrtLO5iZNIZMatMzpjY/OBIuodfg3Hc5ud
 QldIwpDodqEv6xmyU7P5qtkwIlcBEKuoE31MdZtZlvpWdb84VA//2WULjEJPUf5ba
 GXbq+pqCkizeqdBFx+NK1OqLpidEYIVJlvG3N9BXHq2EMAoMfnnIwK/HCsGEtcxS6
 C9mGx5ZVH6RSuR+9Pn1Dp2QGMLDXa6jYuEcEr8D2z6P6TbNH7p6I8EQ9UjSMUvN0z
 toqqzLyvxNBNIkuGZqisiLtEhewIPrPmx0Yv6+MODHBQSr9iRcobW2k/UE+gFt/L/
 C24oriShYd3E2sESeA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.69.248]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MSIF2-1uzGnU1shk-00Uyrc; Tue, 19
 Aug 2025 11:16:12 +0200
Message-ID: <88fd2a23-ecdb-47ec-9328-62b9bda7bff4@web.de>
Date: Tue, 19 Aug 2025 11:16:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Liao Yuanhong <liaoyuanhong@vivo.com>,
 jfs-discussion@lists.sourceforge.net, Dave Kleikamp <shaggy@kernel.org>
References: <20250819032816.426276-1-liaoyuanhong@vivo.com>
Content-Language: en-GB, de-DE
In-Reply-To: <20250819032816.426276-1-liaoyuanhong@vivo.com>
X-Provags-ID: V03:K1:EN4AWiQJyFq1Sucoj9nMHzU1fSTvsh2ltNimcq0EnQBzor0dk5h
 y4X9SEyLDjI/H8lujokVCeIp9dmpTod8/YnHFI1F3sxzTs1Q0aRaqMhOc41SvOB2aHnYdI1
 f4PuWPq3Aybcw83/c3ljizEQRhbqqDiXhNy5mq2vrj0csubb5nhLiZU1cGMuR/FdBLa6GER
 BTXmkqMRjcs6NUV/vWLwA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:EGSQzH2KABU=;1rBwsA1O/UvaT/wMNkcwmjeZ1qI
 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
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > The jfs_log struct is already zeroed by kzalloc(). It's
 redundant to > initialize dummy_log->base to 0. See also once more:
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?h=v6.17-rc2#n94
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [markus.elfring(at)web.de]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.4 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uoISE-0006ci-IH
Subject: Re: [Jfs-discussion] [PATCH] JFS: Remove redundant 0 value
 initialization
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
From: Markus Elfring via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Markus Elfring <Markus.Elfring@web.de>
Cc: LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

> The jfs_log struct is already zeroed by kzalloc(). It's redundant to
> initialize dummy_log->base to 0.

See also once more:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst?h=v6.17-rc2#n94

Regards,
Markus


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
