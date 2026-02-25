Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id I/4yId16n2lkcQQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Feb 2026 23:42:37 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A927B19E65E
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Feb 2026 23:42:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:MIME-Version:Message-Id:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yuaYXe0weq+nWDAcRvmHl9tc8LTW5u6BTOiZxcqgse0=; b=PIYisWQ3E8jrrNN+ocHG4ACOT+
	uJlI5/SuhsyuYgHf/DXJ1f3SP0rZ7mZYGmTkffgpyzJ6DhhaQlsfYMtCLu14qIZthDUFF0oiO8c2q
	5K7cLsXQyC04BkfcNm2dZ/xA3BOrqdAATLyW0WoJn6N0nH9F/qUvVb+e4dG9s0oJFemM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvNZn-0005ZB-4R;
	Wed, 25 Feb 2026 22:41:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tz2294@columbia.edu>) id 1vvNZl-0005Z5-Su
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 22:41:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NwfwFIozanEmKQ2WboEF2eLSp6u+ajjzqhBznl9Xp5k=; b=Pt+aJ5rqQi6Wk1pZVoP3nKVPju
 mniIz98nAzW1X4d+iGEYOpEjlnuGsjg6S/5/WTOpSRRmf43ZxHP9Cr/0qQAdX0EV1HbyQ1SCiKO6z
 aUPtoEroCCD98d6Q6gA0CK642cSl0f6jCYAXQGtcJ+d1iDcgWx8jTHjXmGjk+nbBwA8s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date
 :Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=NwfwFIozanEmKQ2WboEF2eLSp6u+ajjzqhBznl9Xp5k=; b=L
 My7gtS74kJX4X0zOlUjCbQQYP26Qx8SO2eHTW5b9D+rexrwAwo9yPWdfyd0+sJl8ECJjF5BR3opvI
 nP+lTQwj+ZFLp39erm2e5mXufQzTy04+9XHtY7l+GTCIHq8SlxiXVPjAbgluQy/+WnD54jxlkoseQ
 WnQi9b3ApvIpfQxM=;
Received: from mx0b-00364e01.pphosted.com ([148.163.139.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvNZl-0005iT-8f for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 22:41:49 +0000
Received: from pps.filterd (m0167075.ppops.net [127.0.0.1])
 by mx0b-00364e01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61PMCBu83216485
 for <jfs-discussion@lists.sourceforge.net>; Wed, 25 Feb 2026 17:41:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=pps01; bh=NwfwFIozanEmKQ2WboEF2eLSp6
 u+ajjzqhBznl9Xp5k=; b=RImKPNCZ8KR3nDEvDi4Gz9JoREnYDKQllwTLwprPHg
 EZofUkqZpuHKMfVkzs+LY3j8dY74beRPFZZqhviKCUh1A2aNAYdfXqAiPMNKe6ks
 loSk5i2FGL9XrTFvsXn+Fj4ikmc+y8v6qRN0pGcWLyoBDKExdlR/F0ck5JmojNjI
 6CWLc67/eX71ODfjr0b3f1m/+oygS+gHi2JrNGQpDfZmE2mf1hqoIkjHVplkAx94
 MuZA83rNfSsk951VH5T/nWxyNcGJ7PcZNqaziom5z3Kb+zCPooeJAAz6nS1ZIV6n
 eVf8ho1hT2KaT6aXMhD0vvQDM44N5ONvCiXmsLg8j3UA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199])
 by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 4chs0qevfg-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 17:41:38 -0500 (EST)
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-506ab115571so20414441cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 14:41:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772059298; x=1772664098;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NwfwFIozanEmKQ2WboEF2eLSp6u+ajjzqhBznl9Xp5k=;
 b=C+x1B0DOYrx5BrH0WUGY8TvUgLoWvDKxKxwCHX5gVAz3nvi6ZRzZ26n+Vlw5ezpCDv
 pDk+N3yggG9j01On3wsasAPxdMzPIVpx/1mUeCOKs6ERhtMFPdJwFVc8IE+E6LpKLl35
 qVi2V0o/VCRgdU1FhFEIYNzcSpoLNDL6UyDA+ha4ZCVcUjZ706PGkwe8ATsCXi7M7v8r
 IrFvxaiSEjTO85SH5sq8eAscPCkolNGg35YZkLGOVAAHW25Law5KHdqwXQapO5pG0KLu
 OV0NtkEx3hb5kfrXrAf++iYbFHUfrJZbUteGERr7xtrvXDMITfDmEEnCYjx2YEfuplKP
 3COA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXxA5L4OTz4RvJrtM4HrovGm9CuUEf7HTikpaIR/eOLE0FQH4CBrwvT/O7Xw8/MeZiwzFCCHBOvWhZGW4CnFQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyKtQy7XDEXQTkwCQUZXtVqX/4csuubRMcNeAuqnSTVKBkF4bKT
 xwqTED2zW2D96As9n3zXbqx7O/dk79DSYpFSwIvOcYNgtVfJPJxbo5RfKhRECyVTALyl5qtMqmd
 UFyc+xGddy3gpirIScMUdFyxweJvvmFhPV89FiFn/ZbdRwNxAz8vpEb5IxG1BJ5gGHUINuUta
X-Gm-Gg: ATEYQzxBsWTS/8nQZBM6qDm79sW4NWarLV2JtinaeO04LFXnNV0Mi0w6BjRi1WgCPN1
 QoAr+iHh3yHm/uV4/67l1y4QJd/MvdlVMgle0A9MDo/8kHDdOwmm7MGJ17A/VPcgqZVCchBAwJm
 jmT3Jm2peNoJeVEny1CZvUJvXzwKkcf1jbED3sqijwUqJMI4/TZNkp7qp9jxngBrUNf/DGUDFve
 4uSMyKKcNRNy+DHyV4TjUuoN/TiGGaRkkqtLMpHWv8Qe6xzz67Ui4SvtShTJPStwwzPPk6HnrHR
 THBDjopZCFQsJd8ChCS3iTRUjZzlDgXfM9UaKSMNMJCYA7bB8jZfHJiu65DbSMf+7ux1xdxsxzP
 S3418uMtCSXvK2LDgSpsmKEEOBkSKeHCV
X-Received: by 2002:ac8:5a10:0:b0:507:3d1:1dd7 with SMTP id
 d75a77b69052e-5070bba1d4bmr250747191cf.6.1772059297767; 
 Wed, 25 Feb 2026 14:41:37 -0800 (PST)
X-Received: by 2002:ac8:5a10:0:b0:507:3d1:1dd7 with SMTP id
 d75a77b69052e-5070bba1d4bmr250746791cf.6.1772059297257; 
 Wed, 25 Feb 2026 14:41:37 -0800 (PST)
Received: from [127.0.1.1] ([216.158.158.246])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-507449be47dsm4196231cf.15.2026.02.25.14.41.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Feb 2026 14:41:36 -0800 (PST)
Date: Wed, 25 Feb 2026 17:40:55 -0500
Message-Id: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHd6n2kC/3WNywrCMBREf6XctZEmsQ9cCYIf4Fa6SJMbe7FNJ
 GmLUvLvhu5dnhnmzAYRA2GEc7FBwJUieZdBHArQg3JPZGQygyhFXQresn58MePdrJUekEnZcim
 NKU8VQt68A1r67L4H3G9X6HI4UJx9+O4fK9+rP7qVM86sMnXdVGgbbi/aj8vUkzqiWaBLKf0A3
 ZPdNLIAAAA=
X-Change-ID: 20260218-blk-dontcache-338133dd045e
To: Jens Axboe <axboe@kernel.dk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Yuezhang Mo <yuezhang.mo@sony.com>, Dave Kleikamp <shaggy@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Bob Copeland <me@bobcopeland.com>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
X-Mailer: b4 0.14.3-dev-d7477
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772059296; l=3435;
 i=tz2294@columbia.edu; s=20250528; h=from:subject:message-id;
 bh=ekfAVbLYcjxp51ZCBzMQhFzplblwqexTK85RlJKVH8w=;
 b=2wmi7DKqWa1grTlTD1dZPRjRg04r6SzcKRju6wHkROUyXexSvTsDYhaJkZR7D1wKnD2GYouNO
 3Rj5CWfTkXjD0Y32lUMXPSG0+DtraUDXS1xjTx+UYD/cLuEYlAV1ClC
X-Developer-Key: i=tz2294@columbia.edu; a=ed25519;
 pk=BIj5KdACscEOyAC0oIkeZqLB3L94fzBnDccEooxeM5Y=
X-Authority-Analysis: v=2.4 cv=ZbYQ98VA c=1 sm=1 tr=0 ts=699f7aa2 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=mD05b5UW6KhLIDvowZ5dSQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Da8U98TiO7q1upZEImrf:22 a=HpS3TJQ9O3Ob1ozEcmik:22
 a=VwQbUJbxAAAA:8 a=sdoS8YJ70VgF2Jk85QkA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: jz3H5Lk8wt57Ssf1V1ldJAQuMNax2xEF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDIxNiBTYWx0ZWRfX5Ss7SbWVKy9o
 NtNceON5Ud8v2CRLbnlraIi7LDg9+u1AQ/TQnbU4MFsCCDlgn+owHUD2ntDzlv+EztsAZkR15xd
 ErVmz6Q+HCKCgCxBHdOtqWj0Kee45qxpit1Y3iI/QPV9AZr/634I0/ntPjlNGKuOeLU4hIIBHwN
 RbdLoBV52FJX++y3Y13OXrVjqmtuyrDryrn8PhE3rY3Wx0DycDubSF8wLtnRxZC0R8z/Lcp1xQT
 se4Bnhw4C8uVD/z0wnN7bfrphLNdCR0tEKL58zsszK3zz0/0gmJiXvyfqd4c7w2W9wdqPxrqNte
 m3PGHEI72Glj6FLZcO0VODKzLo85tlkkKurYkHsMYps2/lsTcTYHmmrPAveOgWVJdOKLoIOVFY1
 5mT82ShTYymdjl06FKVze5EZ5rcwNDoXVL88VPz9PvoUNyHCrRhbFyM5lqqM6RZIbeoHMpAKa2S
 zCuoRCPDoaDsgyzLJMg==
X-Proofpoint-ORIG-GUID: jz3H5Lk8wt57Ssf1V1ldJAQuMNax2xEF
X-Proofpoint-Virus-Version: vendor=nai engine=6800 definitions=11712
 signatures=596818
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=10
 priorityscore=1501 phishscore=0 spamscore=0 bulkscore=10 adultscore=0
 lowpriorityscore=10 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250216
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add support for using RWF_DONTCACHE with block devices and
 other buffer_head-based I/O. Dropbehind pruning needs to be done in non-IRQ
 context, but block devices complete writeback in IRQ context. To fix this,
 we first defer dropbehind completion initiated from IRQ context by scheduling
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: columbia.edu]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vvNZl-0005iT-8f
Subject: [Jfs-discussion] [PATCH RFC v2 0/2] block: enable RWF_DONTCACHE for
 block devices
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
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-mm@kvack.org, linux-fsdevel@vger.kernel.org,
 Tal Zussman <tz2294@columbia.edu>, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:axboe@kernel.dk,m:aivazian.tigran@gmail.com,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:jack@suse.cz,m:linkinjeon@kernel.org,m:sj1557.seo@samsung.com,m:yuezhang.mo@sony.com,m:shaggy@kernel.org,m:konishi.ryusuke@gmail.com,m:slava@dubeyko.com,m:almaz.alexandrovich@paragon-software.com,m:me@bobcopeland.com,m:willy@infradead.org,m:akpm@linux-foundation.org,m:jfs-discussion@lists.sourceforge.net,m:linux-nilfs@vger.kernel.org,m:ntfs3@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-block@vger.kernel.org,m:linux-mm@kvack.org,m:linux-fsdevel@vger.kernel.org,m:tz2294@columbia.edu,m:linux-ext4@vger.kernel.org,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.dk,gmail.com,zeniv.linux.org.uk,kernel.org,suse.cz,samsung.com,sony.com,dubeyko.com,paragon-software.com,bobcopeland.com,infradead.org,linux-foundation.org];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,columbia.edu:s=pps01];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,columbia.edu:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[columbia.edu:mid,columbia.edu:email,columbia.edu:replyto,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[tz2294@columbia.edu];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A927B19E65E
X-Rspamd-Action: no action

Add support for using RWF_DONTCACHE with block devices and other
buffer_head-based I/O.

Dropbehind pruning needs to be done in non-IRQ context, but block
devices complete writeback in IRQ context. To fix this, we first defer
dropbehind completion initiated from IRQ context by scheduling a work
item on the system workqueue to process a batch of folios.

Then, fix up the block_write_begin() interface to allow issuing
RWF_DONTCACHE I/Os.

This support is useful for databases that operate on raw block devices,
among other userspace applications.

I tested this (with CONFIG_BUFFER_HEAD=y) for reads and writes on a
single block device on a VM, so results may be noisy.

Reads were tested on the root partition with a 45GB range (~2x RAM).
Writes were tested on a disabled swap parition (~1GB) in a memcg of size
244MB to force reclaim pressure.

Results: 

===== READS (/dev/nvme0n1p2) =====
 sec   normal MB/s  dontcache MB/s
----  ------------  --------------
   1         993.9          1799.6
   2         992.8          1693.8
   3         923.4          2565.9
   4        1013.5          3917.3
   5        1557.9          2438.2
   6        2363.4          1844.3
   7        1447.9          2048.6
   8         899.4          1951.7
   9        1246.8          1756.1
  10        1139.0          1665.6
  11        1089.7          1707.7
  12        1270.4          1736.5
  13        1244.0          1756.3
  14        1389.7          1566.2
----  ------------  --------------
 avg        1258.0          2005.4  (+59%)

==== WRITES (/dev/nvme0n1p3) =====
 sec   normal MB/s  dontcache MB/s
----  ------------  --------------
   1        2396.1          9670.6
   2        8444.8          9391.5
   3         770.8          9400.8
   4          61.5          9565.9
   5        7701.0          8832.6
   6        8634.3          9912.9
   7         469.2          9835.4
   8        8588.5          9587.2
   9        8602.2          9334.8
  10         591.1          8678.8
  11        8528.7          3847.0
----  ------------  --------------
 avg        4981.7          8914.3  (+79%)

---
Changes in v2:
- Add R-b from Jan Kara for 2/2.
- Add patch to defer dropbehind completion from IRQ context via a work
  item (1/2).
- Add initial performance numbers to cover letter.
- Link to v1: https://lore.kernel.org/r/20260218-blk-dontcache-v1-1-fad6675ef71f@columbia.edu

---
Tal Zussman (2):
      filemap: defer dropbehind invalidation from IRQ context
      block: enable RWF_DONTCACHE for block devices

 block/fops.c                |  4 +--
 fs/bfs/file.c               |  2 +-
 fs/buffer.c                 | 12 ++++---
 fs/exfat/inode.c            |  2 +-
 fs/ext2/inode.c             |  2 +-
 fs/jfs/inode.c              |  2 +-
 fs/minix/inode.c            |  2 +-
 fs/nilfs2/inode.c           |  2 +-
 fs/nilfs2/recovery.c        |  2 +-
 fs/ntfs3/inode.c            |  2 +-
 fs/omfs/file.c              |  2 +-
 fs/udf/inode.c              |  2 +-
 fs/ufs/inode.c              |  2 +-
 include/linux/buffer_head.h |  5 +--
 mm/filemap.c                | 84 ++++++++++++++++++++++++++++++++++++++++++---
 15 files changed, 103 insertions(+), 24 deletions(-)
---
base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
change-id: 20260218-blk-dontcache-338133dd045e

Best regards,
-- 
Tal Zussman <tz2294@columbia.edu>



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
