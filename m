Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNOkAGobl2ktuwIAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Feb 2026 15:17:14 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C6715F629
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Feb 2026 15:17:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-Id:MIME-Version:Date:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=meJgqzkiFUB6LOLRNienW8hUZ6BqbF6CZm40a5wx7ak=; b=RSMtDcM8ej/cmuvIEzBpiFFJKn
	aurLPOH5BkQBSGojtrqHCJWrBfNlHC3vNa/4PjP+fsOAPpwupPed8/GqmKyALbjNAaiN0ZwwOqwJD
	YSHh7QwIldu4g9SqBkNuHGh/UTWxrDSdkr9U+rkNMqKKoUVnWSK2+42d8M0Nyup2siTc=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vt4pN-0008Sj-MS;
	Thu, 19 Feb 2026 14:16:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tz2294@columbia.edu>) id 1vspBI-0004by-JZ
 for jfs-discussion@lists.sourceforge.net;
 Wed, 18 Feb 2026 21:34:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uuJ79dh9olk4pYGV3v3Dl4Z5kRJT1ZZ5CX7FO3lNziY=; b=fYbcNd/dDW6Z6jZEznaDvzFSJA
 LwwDxN1KCLyscDqjfkLJZWEbk505ysAygR83T91J8BM0Ldg+fshxhGo2MbWZnLJAa6+D62jeLf3VJ
 5qvzDu0eKfwM9ioZXF+32YskzRb8wEZe6KU4+EL7s1/GrLvIdLjsFyj2J/mYREGDV4+E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:Date:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uuJ79dh9olk4pYGV3v3Dl4Z5kRJT1ZZ5CX7FO3lNziY=; b=G
 vtK4znjhjEJSd0yljCvNIxqLj7HgF4KjOwodJqDkSokGypRDcPpiWs+FwcT8ScCu+uO9iCZf4V6F0
 +ikbDG4lDp/cVaizeR/tPDXJ3fad9wK9Ts/EoaooWFlugA7GEIhE89pFTjD0oQ2iyCDvo7y6fRkXl
 +m/j5o315QzgMX1g=;
Received: from mx0a-00364e01.pphosted.com ([148.163.135.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vspBH-0007n3-Lo for jfs-discussion@lists.sourceforge.net;
 Wed, 18 Feb 2026 21:34:00 +0000
Received: from pps.filterd (m0167070.ppops.net [127.0.0.1])
 by mx0a-00364e01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61ILDXON2644389
 for <jfs-discussion@lists.sourceforge.net>; Wed, 18 Feb 2026 16:13:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=pps01; bh=uuJ79dh9olk4pYGV3v3Dl4Z5kR
 JT1ZZ5CX7FO3lNziY=; b=KeuNmF5oPATHpJ95S8DRfxBbTUWTy53j/ULgNAxQWU
 0ybJCdDUX8KamSqaD++34v507hflbquC/BwZaas9fSXXivIpGKw/MSm+qUZUB5By
 Zg47BJ93bNc1Msqqr18QqBYryLWctBDCM/7OfotBLr82TvVNoq6nw5xOFTPojuE6
 njW9YWrIVgH9yBajGp7dN5y+dpo8AST5XOhyH8M7rHqFE1Q4LU7Goaj18A3+4DnO
 cxsp6MVO19RCoKXTk43qGsZYKR4eaYV7RSul6t5XySvt1JTiLN4rLf+pFjT3XU8r
 lxRdk6Edk9tpF2NfOCzmYVt6vUvNEw8JTi5xsF+H9GdQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 4cdk32197e-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 18 Feb 2026 16:13:35 -0500 (EST)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-506b3fb32a1so30621311cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 18 Feb 2026 13:13:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771449206; x=1772054006;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uuJ79dh9olk4pYGV3v3Dl4Z5kRJT1ZZ5CX7FO3lNziY=;
 b=SgOwI4Fqto1oSkA/A0XAjnkiUKy+i7UZSbwAiuRtPUmdScj1AD6geWkh6Fizueo/6d
 yU0dUsopbgX7RYD8WyKXLm5F4Ohwdpc5CwL5hTNnl0sH2+Z4Zhf7pgPgyYUR9VbbcHQv
 FsZTcWyuuaIPsMS3n5josleHyBlY4ikD+CAxbW6wbxmZrRVJePcGdqYSEjg+jRikO8R3
 DPDZWO0AvcXetrBfjW0UWugLHB31DQo0eanHWnYZN8t89TPX2KgPCgOjcdIAnVuikkRk
 0TLUeuWcVfRKZPcCFq0Q7KGvZrgcY/s5W8WTPWCiR3Gg2mMGe2IgW2U+yM8h8yI6Othq
 LWpw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX4P3I1IF4z3nLgbXqnHPFOUmpk6QQr4HXiaQ4McB197L24XYf5TElGjDT9qEm6rGd2K8/gyoPuqptZgEguXQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzfeE07xMijoEERX1ov6EoT/7gQ8EqENNWwHxMMqSbzx0oguxIc
 0WiLwmf3DfNdDQOaYz9z3G9D8RhonFop9i1TBnExucyeXdWf6reAwmu1K2aSh8b9S4FNWkQv4D7
 szmqzrhWTW5nLUVFYYGiehWTJmsY1xkaqi1zpBOmftamQ3+nKAxM4YKYkij8C/TfABfAdLhtq
X-Gm-Gg: AZuq6aLM8O4EIQV75OaRZWizSW12fIYDQucUDXk3xZ5rcLgn/3Z5hXOIU9Z/Br2wldy
 z0s6Wpfb5qy7bgdYGH25v97hVSUkP/MpQhsON6gVNROYhHgQdJ83FPO105K1fserypWzkoKpSXU
 Q+be5pGdw/MWgt9XCip3LHdA5Ms8oA6O4MsdFzB612VNCI/ulfjATKS0uhMqKR0KF5TJjLMC2zl
 eiOfGlRuU9KqRnyiawRw1WQXg9nftEFYEb+6YqUVUIkKbKAw5LJUGMsRA0RKlrzQ/UfnlXjLwEo
 zqw1XcMvgBM64Ql5RC+H2GS/lxBROq9rvnjeVkMJAbig4Zm5+QWvXGcsxfUYp60HOu4ZoMTuQqh
 2QGQwAEH1puTkUzAgmup6JZNXr8GvdCE5
X-Received: by 2002:ac8:5ac3:0:b0:501:13b1:14cd with SMTP id
 d75a77b69052e-506b3f7dc4amr210923851cf.3.1771449204957; 
 Wed, 18 Feb 2026 13:13:24 -0800 (PST)
X-Received: by 2002:ac8:5ac3:0:b0:501:13b1:14cd with SMTP id
 d75a77b69052e-506b3f7dc4amr210923401cf.3.1771449204472; 
 Wed, 18 Feb 2026 13:13:24 -0800 (PST)
Received: from [127.0.1.1] ([216.158.158.246])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8972a23c824sm180233646d6.34.2026.02.18.13.13.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Feb 2026 13:13:23 -0800 (PST)
Date: Wed, 18 Feb 2026 16:13:17 -0500
MIME-Version: 1.0
Message-Id: <20260218-blk-dontcache-v1-1-fad6675ef71f@columbia.edu>
X-B4-Tracking: v=1; b=H4sIAGwrlmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDI0ML3aScbN2U/LyS5MTkjFRdY2MLQ2PjlBQDE9NUJaCegqLUtMwKsHn
 RSkFuzkqxtbUAJdTZe2QAAAA=
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
 Bob Copeland <me@bobcopeland.com>
X-Mailer: b4 0.14.3-dev-d7477
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771449202; l=9869;
 i=tz2294@columbia.edu; s=20250528; h=from:subject:message-id;
 bh=T0LvtdehGbkNJTSiNQgmirD033nsR1VjUZyYykwDeYI=;
 b=ncr9b3Og8wbWU8LbF6spEUvNolCpc/Omr1KB8euffU2v938xtBKSpJRbDWzlQXyoEaqvB7eBM
 EkxUdWlF2bvBic15lk0/0ypTHQFiFDCMJEjYAAgimrx91gq1j8YjEKy
X-Developer-Key: i=tz2294@columbia.edu; a=ed25519;
 pk=BIj5KdACscEOyAC0oIkeZqLB3L94fzBnDccEooxeM5Y=
X-Proofpoint-GUID: g8AE-iE0c1MjVZtR9gihVCbaRQu2xPUR
X-Authority-Analysis: v=2.4 cv=U9yfzOru c=1 sm=1 tr=0 ts=69962b7f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=mD05b5UW6KhLIDvowZ5dSQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Omgu3vtQbb9kFtOpCJYA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE4MiBTYWx0ZWRfX5+1zBm+/AuRF
 Svj4PwsEecjvfMsqs8aQtitrb8eABCyi2qN8R89cy08s7f0/OTKPtnSEovrSj6jvQeibdgOD6/N
 3ZExc3sEtv2lbumrUH9aHySO1fhKtfVAg8g4FpagqEzJuA38eviqAEQXfRh48rPGHuAdTiKrhVi
 DSQyNqLkvnnnYAqj53HbhONKpxGPZ7YlpznhO6gpPD3z75PMAg8S+GCoFHgZZKKNthRW40Uf8Gm
 FcxfEUyFF/k9nL5+5+ueIRi7V1fbDWU9/e0YQiPhDtLDd6E459dI1E4yLuiQ6QUZ1OPd8GapQTd
 RM8IbRJs8qUcKNA6yziAQPcusVSXPCTyr0ZVstgfOAdHwd3yrn9vtPYWoFEz+Pskf+mVTxpByFZ
 GBwKhogHKNpXsLptoC//28zVBcsqlkKDWzY32a5LhORapbyIuuDOyboGtb7EWlF5o58CYuIx+Bd
 eNcBLkCKW7y4cceb22g==
X-Proofpoint-ORIG-GUID: g8AE-iE0c1MjVZtR9gihVCbaRQu2xPUR
X-Proofpoint-Virus-Version: vendor=nai engine=6800 definitions=11705
 signatures=596818
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=10 clxscore=1011 adultscore=0 priorityscore=1501 bulkscore=10
 spamscore=0 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=10
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180182
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Block device buffered reads and writes already pass through
 filemap_read() and iomap_file_buffered_write() respectively, both of which
 handle IOCB_DONTCACHE. Enable RWF_DONTCACHE for block device file [...] 
 Content analysis details:   (1.8 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 2.0 KHOP_DYNAMIC           Relay looks like a dynamic address
X-Headers-End: 1vspBH-0007n3-Lo
X-Mailman-Approved-At: Thu, 19 Feb 2026 14:16:25 +0000
Subject: [Jfs-discussion] [PATCH RFC] block: enable RWF_DONTCACHE for block
 devices
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
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
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
	FORGED_RECIPIENTS(0.00)[m:axboe@kernel.dk,m:aivazian.tigran@gmail.com,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:jack@suse.cz,m:linkinjeon@kernel.org,m:sj1557.seo@samsung.com,m:yuezhang.mo@sony.com,m:shaggy@kernel.org,m:konishi.ryusuke@gmail.com,m:slava@dubeyko.com,m:almaz.alexandrovich@paragon-software.com,m:me@bobcopeland.com,m:jfs-discussion@lists.sourceforge.net,m:linux-nilfs@vger.kernel.org,m:ntfs3@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-block@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:tz2294@columbia.edu,m:linux-ext4@vger.kernel.org,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.dk,gmail.com,zeniv.linux.org.uk,kernel.org,suse.cz,samsung.com,sony.com,dubeyko.com,paragon-software.com,bobcopeland.com];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,columbia.edu:s=pps01];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,columbia.edu:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.984];
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
X-Rspamd-Queue-Id: D7C6715F629
X-Rspamd-Action: no action

Block device buffered reads and writes already pass through
filemap_read() and iomap_file_buffered_write() respectively, both of
which handle IOCB_DONTCACHE. Enable RWF_DONTCACHE for block device files
by setting FOP_DONTCACHE in def_blk_fops.

For CONFIG_BUFFER_HEAD paths, thread the kiocb through
block_write_begin() so that buffer_head-based I/O can use DONTCACHE
behavior as well. Callers without a kiocb context (e.g. nilfs2 recovery)
pass NULL, which preserves the existing behavior.

This support is useful for databases that operate on raw block devices,
among other userspace applications.

Signed-off-by: Tal Zussman <tz2294@columbia.edu>
---
This is based on v6.19. Please let me know if there's a different tree I
should base this on.

I wasn't sure if the block_write_begin() changes were necessary for
block device support if CONFIG_BUFFER_HEAD is set (hence the RFC tag). I
can remove those if they're not necessary.
---
 block/fops.c                |  4 ++--
 fs/bfs/file.c               |  2 +-
 fs/buffer.c                 | 12 ++++++++----
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
 include/linux/buffer_head.h |  5 +++--
 14 files changed, 24 insertions(+), 19 deletions(-)

diff --git a/block/fops.c b/block/fops.c
index 4d32785b31d9..6bc727f8b252 100644
--- a/block/fops.c
+++ b/block/fops.c
@@ -505,7 +505,7 @@ static int blkdev_write_begin(const struct kiocb *iocb,
 			      unsigned len, struct folio **foliop,
 			      void **fsdata)
 {
-	return block_write_begin(mapping, pos, len, foliop, blkdev_get_block);
+	return block_write_begin(iocb, mapping, pos, len, foliop, blkdev_get_block);
 }
 
 static int blkdev_write_end(const struct kiocb *iocb,
@@ -967,7 +967,7 @@ const struct file_operations def_blk_fops = {
 	.splice_write	= iter_file_splice_write,
 	.fallocate	= blkdev_fallocate,
 	.uring_cmd	= blkdev_uring_cmd,
-	.fop_flags	= FOP_BUFFER_RASYNC,
+	.fop_flags	= FOP_BUFFER_RASYNC | FOP_DONTCACHE,
 };
 
 static __init int blkdev_init(void)
diff --git a/fs/bfs/file.c b/fs/bfs/file.c
index d33d6bde992b..f2804e38b8a7 100644
--- a/fs/bfs/file.c
+++ b/fs/bfs/file.c
@@ -177,7 +177,7 @@ static int bfs_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, bfs_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, bfs_get_block);
 	if (unlikely(ret))
 		bfs_write_failed(mapping, pos + len);
 
diff --git a/fs/buffer.c b/fs/buffer.c
index 838c0c571022..33c3580b85d8 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2241,14 +2241,18 @@ EXPORT_SYMBOL(block_commit_write);
  *
  * The filesystem needs to handle block truncation upon failure.
  */
-int block_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
-		struct folio **foliop, get_block_t *get_block)
+int block_write_begin(const struct kiocb *iocb, struct address_space *mapping,
+		loff_t pos, unsigned len, struct folio **foliop, get_block_t *get_block)
 {
 	pgoff_t index = pos >> PAGE_SHIFT;
+	fgf_t fgp_flags = FGP_WRITEBEGIN;
 	struct folio *folio;
 	int status;
 
-	folio = __filemap_get_folio(mapping, index, FGP_WRITEBEGIN,
+	if (iocb && iocb->ki_flags & IOCB_DONTCACHE)
+		fgp_flags |= FGP_DONTCACHE;
+
+	folio = __filemap_get_folio(mapping, index, fgp_flags,
 			mapping_gfp_mask(mapping));
 	if (IS_ERR(folio))
 		return PTR_ERR(folio);
@@ -2591,7 +2595,7 @@ int cont_write_begin(const struct kiocb *iocb, struct address_space *mapping,
 		(*bytes)++;
 	}
 
-	return block_write_begin(mapping, pos, len, foliop, get_block);
+	return block_write_begin(iocb, mapping, pos, len, foliop, get_block);
 }
 EXPORT_SYMBOL(cont_write_begin);
 
diff --git a/fs/exfat/inode.c b/fs/exfat/inode.c
index f9501c3a3666..39d36e8fdfd6 100644
--- a/fs/exfat/inode.c
+++ b/fs/exfat/inode.c
@@ -456,7 +456,7 @@ static int exfat_write_begin(const struct kiocb *iocb,
 	if (unlikely(exfat_forced_shutdown(mapping->host->i_sb)))
 		return -EIO;
 
-	ret = block_write_begin(mapping, pos, len, foliop, exfat_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, exfat_get_block);
 
 	if (ret < 0)
 		exfat_write_failed(mapping, pos+len);
diff --git a/fs/ext2/inode.c b/fs/ext2/inode.c
index dbfe9098a124..11aab03de752 100644
--- a/fs/ext2/inode.c
+++ b/fs/ext2/inode.c
@@ -930,7 +930,7 @@ ext2_write_begin(const struct kiocb *iocb, struct address_space *mapping,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, ext2_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, ext2_get_block);
 	if (ret < 0)
 		ext2_write_failed(mapping, pos + len);
 	return ret;
diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 4709762713ef..ae52db437771 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -303,7 +303,7 @@ static int jfs_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, jfs_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, jfs_get_block);
 	if (unlikely(ret))
 		jfs_write_failed(mapping, pos + len);
 
diff --git a/fs/minix/inode.c b/fs/minix/inode.c
index 51ea9bdc813f..9075c0ba2f20 100644
--- a/fs/minix/inode.c
+++ b/fs/minix/inode.c
@@ -465,7 +465,7 @@ static int minix_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, minix_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, minix_get_block);
 	if (unlikely(ret))
 		minix_write_failed(mapping, pos + len);
 
diff --git a/fs/nilfs2/inode.c b/fs/nilfs2/inode.c
index 51bde45d5865..d9d57eeecc5d 100644
--- a/fs/nilfs2/inode.c
+++ b/fs/nilfs2/inode.c
@@ -230,7 +230,7 @@ static int nilfs_write_begin(const struct kiocb *iocb,
 	if (unlikely(err))
 		return err;
 
-	err = block_write_begin(mapping, pos, len, foliop, nilfs_get_block);
+	err = block_write_begin(iocb, mapping, pos, len, foliop, nilfs_get_block);
 	if (unlikely(err)) {
 		nilfs_write_failed(mapping, pos + len);
 		nilfs_transaction_abort(inode->i_sb);
diff --git a/fs/nilfs2/recovery.c b/fs/nilfs2/recovery.c
index a9c61d0492cb..2f5fe44bf736 100644
--- a/fs/nilfs2/recovery.c
+++ b/fs/nilfs2/recovery.c
@@ -541,7 +541,7 @@ static int nilfs_recover_dsync_blocks(struct the_nilfs *nilfs,
 		}
 
 		pos = rb->blkoff << inode->i_blkbits;
-		err = block_write_begin(inode->i_mapping, pos, blocksize,
+		err = block_write_begin(NULL, inode->i_mapping, pos, blocksize,
 					&folio, nilfs_get_block);
 		if (unlikely(err)) {
 			loff_t isize = inode->i_size;
diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
index 0a9ac5efeb67..8c788feb319e 100644
--- a/fs/ntfs3/inode.c
+++ b/fs/ntfs3/inode.c
@@ -966,7 +966,7 @@ int ntfs_write_begin(const struct kiocb *iocb, struct address_space *mapping,
 			goto out;
 	}
 
-	err = block_write_begin(mapping, pos, len, foliop,
+	err = block_write_begin(iocb, mapping, pos, len, foliop,
 				ntfs_get_block_write_begin);
 
 out:
diff --git a/fs/omfs/file.c b/fs/omfs/file.c
index 49a1de5a827f..3bade632e36e 100644
--- a/fs/omfs/file.c
+++ b/fs/omfs/file.c
@@ -317,7 +317,7 @@ static int omfs_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, omfs_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, omfs_get_block);
 	if (unlikely(ret))
 		omfs_write_failed(mapping, pos + len);
 
diff --git a/fs/udf/inode.c b/fs/udf/inode.c
index 7fae8002344a..aec9cdc938be 100644
--- a/fs/udf/inode.c
+++ b/fs/udf/inode.c
@@ -259,7 +259,7 @@ static int udf_write_begin(const struct kiocb *iocb,
 	int ret;
 
 	if (iinfo->i_alloc_type != ICBTAG_FLAG_AD_IN_ICB) {
-		ret = block_write_begin(mapping, pos, len, foliop,
+		ret = block_write_begin(iocb, mapping, pos, len, foliop,
 					udf_get_block);
 		if (unlikely(ret))
 			udf_write_failed(mapping, pos + len);
diff --git a/fs/ufs/inode.c b/fs/ufs/inode.c
index e2b0a35de2a7..dfba985265a8 100644
--- a/fs/ufs/inode.c
+++ b/fs/ufs/inode.c
@@ -481,7 +481,7 @@ static int ufs_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, ufs_getfrag_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, ufs_getfrag_block);
 	if (unlikely(ret))
 		ufs_write_failed(mapping, pos + len);
 
diff --git a/include/linux/buffer_head.h b/include/linux/buffer_head.h
index b16b88bfbc3e..4b07dec5f8eb 100644
--- a/include/linux/buffer_head.h
+++ b/include/linux/buffer_head.h
@@ -258,8 +258,9 @@ int __block_write_full_folio(struct inode *inode, struct folio *folio,
 		get_block_t *get_block, struct writeback_control *wbc);
 int block_read_full_folio(struct folio *, get_block_t *);
 bool block_is_partially_uptodate(struct folio *, size_t from, size_t count);
-int block_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
-		struct folio **foliop, get_block_t *get_block);
+int block_write_begin(const struct kiocb *iocb, struct address_space *mapping,
+		loff_t pos, unsigned len, struct folio **foliop,
+		get_block_t *get_block);
 int __block_write_begin(struct folio *folio, loff_t pos, unsigned len,
 		get_block_t *get_block);
 int block_write_end(loff_t pos, unsigned len, unsigned copied, struct folio *);

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
